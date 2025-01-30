Customization Instructions
1. Changing the Song
To change the song that plays during the loading screen, follow these steps:

Locate the index.html file in the loading-screen folder.

Open the file with a text editor (e.g., Notepad++, Visual Studio Code).

Look for the following line in the HTML code:

html
Copy
Edit
<audio id="background-music" autoplay loop>
    <source src="path/to/your/music/file.mp3" type="audio/mpeg">
</audio>
Replace the src="path/to/your/music/file.mp3" with the file path of your desired song. For example:

html
Copy
Edit
<source src="music/new_song.mp3" type="audio/mpeg">
Save the file after editing.

Note: Make sure your music file is in a supported format (e.g., .mp3, .ogg).

2. Changing the Server Title
To change the title displayed on the loading screen, follow these steps:

Open the index.html file in a text editor.

Locate the following line in the <head> section:

html
Copy
Edit
<title>Your Server Title</title>
Replace Your Server Title with the new title you want to display.

Save the file after editing.

3. Changing the Background Image
To change the background image of the loading screen, follow these steps:

Place your new background image in the loading-screen folder (or a subfolder if you'd like to organize it).

Open the style.css file in the loading-screen folder.

Look for the following CSS rule:

css
Copy
Edit
body {
    background-image: url('background.jpg');
}
Replace 'background.jpg' with the file name and path of your new background image. For example:

css
Copy
Edit
body {
    background-image: url('images/my_new_background.jpg');
}
Save the file after editing.

4. Changing the Server Logo
To change the server logo displayed on the loading screen:

Place your new logo image in the loading-screen folder (or a subfolder if you'd like to organize it).

Open the index.html file in a text editor.

Look for the following line in the HTML code:

html
Copy
Edit
<img src="logo.png" alt="Server Logo">
Replace logo.png with the file name and path of your new logo image. For example:

html
Copy
Edit
<img src="images/my_new_logo.png" alt="Server Logo">
Save the file after editing.

Important Notes
Ensure that your file paths (for music, images, etc.) are correct relative to the loading screen files.
If you’re unsure about file formats, .mp3 is recommended for music and .png or .jpg for images.
After making changes, reload your FiveM server to see the updates in effect.
