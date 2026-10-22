public class triangle{
    public static void main(String[] args){
        int star=1;
        int spaces=4;
        for(int i=1;i<=5;i++){
            for(int a=1;a<=spaces;a++){
                System.out.print(" ");
            }
            spaces=spaces-1;
            for (int b = 1; b <= star; b++) {
                System.out.print("*");
            }
            star=star+2;
            System.out.println("");
        }
    }
}
