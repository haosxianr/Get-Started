/// Example of a C# program Syntax Highlighting.

void CreateBitmap()
{
    System.Drawing.Bitmap flag = new System.Drawing.Bitmap(10, 10);
    for( int x = 0; x <  flag.Height; ++x )
        for( int y = 0; y < flag.Width; ++y )
            flag.SetPixel(x, y, Color.White);
    for( int x = 0; x < flag.Height; ++x )
        flag.SetPixel(x, x, Color.Red);
    pictureBox1.Image = flag;
}
