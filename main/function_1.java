import java.io.*;

class Hamming {
    static int hammingDist(String str1, String str2) {
        int i = 0, count = 0;
        while (i < str1.length()) {
            if (str1.charAt(i) != str2.charAt(i))
                count++;
            i++;
        }
        return count;
    }
    public static void main(String[] args) {
        String name = "Anusuiya Bora";
        String email = "bora.anusuiya818@gmail.com";
        String username = "@AnusuiyaBora_08";
        String biostack = "Drug Development";
        String twitter = "@Bora_Anusuiya08";
        String str1 = username;
        String str2 = twitter;

        System.out.println(name + "," + email + "," + username + "," + biostack + "," + twitter + "," + hammingDist(str1, str2));
    }
}
