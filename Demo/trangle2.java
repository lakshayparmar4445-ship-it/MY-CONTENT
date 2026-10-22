public class trangle2{
    public static void main(String[] args) {
        for(int i=1; i<=5 ; i++){
            {
                int space=4;
                int stars=1;
                for(int j=1;j<=space;j++){
                    System.out.print(" ");
                }
                space--;
                for(int a=1;a<=stars;a++){
                    System.out.print("*");
                }
                stars=stars+2;
                System.out.println("");
            }

            

        }
    }
}