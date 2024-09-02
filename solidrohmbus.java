public class solidrohmbus {
    public static void main(String[] args) {
    int i,j,n=5;
    for(i=1;i<=n;i++)
    {
        for(j=1;j<=n-i;j++)
        {
            System.out.print(" ");
        }
        for(j=1;j<=n;j++)
        {
            System.out.print("*");
        }
        System.out.println();
    }
        
    }
    
}
