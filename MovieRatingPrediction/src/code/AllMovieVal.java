package code;

import java.io.*;
import java.util.List;

import beans.movieModel;

import com.database.ConnectionManager;

public class AllMovieVal {

	@SuppressWarnings("null")
	public static void main(String[] args) throws IOException {
		List list = null;
		int[] ids = { 18189, 18729, 68924, 68958, 83319, 84813, 85693, 110273,
				130531, 155666, 155681, 192861, 196540, 199740, 246450, 255832,
				258186, 270046, 280094, 294446, 297357, 313808, 334786, 379144,
				384138, 469609, 471351, 675646, 683843, 685036, 704087, 704230,
				754770, 763440, 800979, 800981, 990229, 990936, 1011463,
				1016568, 1078453, 1078454, 1078455, 1078456, 1078457, 1078458,
				1078459, 1078460, 1078461, 1078462, 1078463, 1078464, 1078465,
				1078466, 1078467, 1078468, 1078469, 1078470, 1078471, 1078472,
				1078473, 1078474, 1078475, 1078476, 1078477, 1078478, 1078479,
				1078480, 1078481, 1078482, 1078483, 1078484, 1078485, 1078486,
				1078487, 1078488, 1078489, 1078490, 1078491, 1078492, 1078493,
				1078494, 1078495, 1078496, 1078497, 1078498, 1078499, 1078500,
				1078501, 1078502, 1078503, 1078504, 1078505, 1078506, 1078507,
				1078508, 1078509, 1078510, 1078511, 1078512, 1078513, 1078514,
				1078515, 1078516, 1078517, 1078518, 1078519, 1078520, 1078521,
				1078522, 1078523, 1078524, 1078525, 1078526, 1078527, 1112406,
				1139328, 1152647, 1201894, 1222434, 1259351, 1259357, 1304585,
				1304606, 1305548, 1343744, 1364535, 1372407, 1375025, 1383873,
				1384627, 1387200, 1387485, 1389061, 1395213, 1415581, 1427209,
				1487910, 1559606, 1571376, 1572496, 1596489, 1611350, 1639473,
				1647226, 1660501, 1696550, 1744785, 1752678, 1781040, 1781233,
				1789258, 1880542, 1880545, 1893203, 1910077, 1992148, 1995762,
				2000526, 2002923, 2005905, 2005918, 2037107, 2044829, 2054538,
				2073499, 2091741, 2096976, 2099754, 2108545, 2136679, 2170762,
				2201319, 2217181, 2228954, 2313761, 2318686, 2323803, 2323804,
				2330752, 2344999, 2345001, 2345093, 2370538, 2423790, 2505668,
				2525215, 2539883, 2587390, 2738656, 2738689, 2738704, 2738741,
				2819106, 2852720, 2943111, 3001759, 3004816, 3007214, 3036885,
				3055630, 3066455, 3072574, 3216726, 3279464, 3279677, 3279677,
				3280257, 3280676 };
		
/*		for (int i = 2500; i < 3281300; i++) {
*/
		for (int i = 0; i < ids.length; i++) {
			String title = ConnectionManager.getmovTitle(ids[i]);
			String director_name = ConnectionManager.getDirector(ids[i]);
			String country = ConnectionManager.getcountry(ids[i]);
			String language = ConnectionManager.getLanguage(ids[i]);
			String genres = ConnectionManager.getGenres(ids[i]);
			String rank = ConnectionManager.getRank(ids[i]);
			String votes = ConnectionManager.getVotes(ids[i]);
			String writer = ConnectionManager.getWriter(ids[i]);
			String producer = ConnectionManager.getProducer(ids[i]);
			String dir_rank = ConnectionManager.getDirRating(ids[i]);
			String actor = ConnectionManager.getActor(ids[i]);
			String actorRating = ConnectionManager.getActorRating(ids[i]);

			/*
			 * movieModel mv=new movieModel();
			 * mv.setDirector_name(director_name); mv.setCountry(country);
			 * mv.setLanguage(language); mv.setGenres(genres); mv.setRank(rank);
			 * mv.setVotes(votes); mv.setWriter(writer);
			 * mv.setProducer(producer);
			 */

			/*
			 * String
			 * a=("\nid: "+" Dir Name: "+director_name+" country:"+country
			 * +" Language:"
			 * +language+" genres:"+genres+" Rank: "+rank+" Votes: "
			 * +votes+" Writer: "+writer+" producer: "+producer);
			 */

			/*if (director_name.length() > 0 && country.length() > 0
					&& language.length() > 0 && genres.length() > 0
					&& rank.length() > 0 && votes.length() > 0
					&& writer.length() > 0 && producer.length() > 0) {*/
				System.out.println(ids[i] + " | " + title + " | " + director_name
						+ " | " + country + " | " + language + " | " + genres
						+ " | " + rank + " | " + votes + " | " + writer + " | "
						+ producer +" | "+ dir_rank +" | "+actor+" | "+actorRating);
			/*}*/

		}

	}

}
