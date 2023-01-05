
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dvops.maven.eclipse.Game;
import com.dvops.maven.eclipse.Reviews;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;

/**
 * Servlet implementation class GameServlet
 */
@WebServlet("/GameServlet")
public class GameServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public GameServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	// Step 1: Prepare list of variables used for database connections
	private String jdbcURL = "jdbc:mysql://localhost:3308/userdetails";
	private String jdbcUsername = "root";
	private String jdbcPassword = "password";

	// Step 2: Prepare list of SQL prepared statements to perform CRUD to our
	// database
	private static final String INSERT_GAMES_SQL = "INSERT INTO games" + " (name, category, image, description) VALUES "
			+ " (?, ?, ?);";
	private static final String SELECT_GAME_BY_ID = "select name,category,image,description from games where name =?";
	private static final String SELECT_ALL_GAMES = "select * from games ";
	private static final String DELETE_GAMES_SQL = "delete from games where name = ?;";
	private static final String UPDATE_GAMES_SQL = "update games set name = ?,category= ?,image =?,description =? where name = ?;";
	
	//getting reviews by game name
	private static final String SELECT_REVIEWS_BY_GAME = "select game,rating,feedback,username from reviews where game =?";
	private static final String SELECT_ALL_REVIEWS = "select * from reviews ";

	// Step 3: Implement the getConnection method which facilitates connection to
	// the database via JDBC
	protected Connection getConnection() {
		Connection connection = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return connection;
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());

		// Step 4: Depending on the request servlet path, determine the function to
		// invoke using the follow switch statement.
		String action = request.getServletPath();
		try {
			switch (action) {
//		case "/GameServlet/delete":
//		deleteGame(request, response);
//		break;
			case "/GameServlet/edit":
				showEditForm(request, response);
				showReviews(request, response);
				break;
//		case "/GameServlet/update":
//		updateGame(request, response);
//		break;
			case "/GameServlet/dashboard":
				listGames(request, response);
				break;
			}
		} catch (SQLException ex) {
			throw new ServletException(ex);
		}
	}

	// Step 5: listUsers function to connect to the database and retrieve all users
	// records
	private void listGames(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		List<Game> games = new ArrayList<>();
		try (Connection connection = getConnection();
				// Step 5.1: Create a statement using connection object
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_GAMES);) {
			// Step 5.2: Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();
			// Step 5.3: Process the ResultSet object.
			while (rs.next()) {
				String name = rs.getString("name");
				String category = rs.getString("category");
				String image = rs.getString("image");
				String description = rs.getString("description");
				games.add(new Game(name, category, image, description));
			}
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		// Step 5.4: Set the users list into the listUsers attribute to be pass to the
		// userManagement.jsp
		request.setAttribute("listGames", games);
		request.getRequestDispatcher("/gameManagement.jsp").forward(request, response);
	}

	// method to get parameter, query database for existing game data and redirect
	// to individual game info page
	private void showEditForm(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, ServletException, IOException {
		// get parameter passed in the URL
		String name = request.getParameter("name");
		Game existingGame = new Game("", "", "", "");
		// Step 1: Establishing a Connection
		try (Connection connection = getConnection();
				// Step 2:Create a statement using connection object
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_GAME_BY_ID);) {
			preparedStatement.setString(1, name);
			// Step 3: Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();
			// Step 4: Process the ResultSet object
			while (rs.next()) {
				name = rs.getString("name");
				String category = rs.getString("category");
				String image = rs.getString("image");
				String description = rs.getString("description");
				existingGame = new Game(name, category, image, description);
			}
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		// Step 5: Set existingUser to request and serve up the userEdit form
		request.setAttribute("game", existingGame);
//		request.getRequestDispatcher("/gameById.jsp").forward(request, response);
	}
	
	//show reviews by game name
	private void showReviews(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		List<Reviews> reviews = new ArrayList<>();
		
//		String game = request.getParameter("name");
//		Reviews existingReviews = new Reviews("", "", "", "");
		
		try (Connection connection = getConnection();
				// Step 5.1: Create a statement using connection object
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_REVIEWS);) {
//			preparedStatement.setString(1, game);
			// Step 5.2: Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();
			// Step 5.3: Process the ResultSet object.
			while (rs.next()) {
				String game = rs.getString("game");
				String rating = rs.getString("rating");
				String feedback = rs.getString("feedback");
				String username = rs.getString("username");
				reviews.add(new Reviews(game, rating, feedback, username));
				System.out.println(game);
			}
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		// Step 5.4: Set the users list into the listUsers attribute to be pass to the
		// userManagement.jsp
		request.setAttribute("showReviews", reviews);
		request.getRequestDispatcher("/gameById.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
