import Graphics.Gloss

--Ancho de la ventana
anchoVentana :: Int
anchoVentana = 400

--Alto de la ventana
altoVentana :: Int
altoVentana = 400

--Tamaño de cada pixel
tanano :: Float
tanano = 20

--Color azul
azul :: Color
azul = convertirRGB (2, 101, 204)

--Color azul claro
azulClaro :: Color
azulClaro = convertirRGB (44,204,239)

--Color negro
negro :: Color
negro = convertirRGB (0,0,0)

--Color piel
piel :: Color
piel = convertirRGB (253,195,153)

--Color blanco
blanco :: Color
blanco = convertirRGB (255,255,255)

--Función que convierte los valores rgb de entre 0 y 255 a valores entre 0 y 1  
convertirRGB :: (Int, Int, Int) -> Color
convertirRGB (r, g, b) = makeColor (r' / 255) (g' / 255) (b' / 255) 1.0
    where
        r' = fromIntegral r
        g' = fromIntegral g
        b' = fromIntegral b

--Método principal del programa
main :: IO ()
main = display (InWindow "Megaman" (anchoVentana, altoVentana) (10, 10)) white imagen

--Arreglo de objetos de tipo Picture que conforman la imagen
imagen :: Picture
imagen = pictures [
    --Se establecen manualmente cada pixel en su posición. Si hay tres pixeles del mismo color juntos se puede modificar el ancho para dibujarlos todos de una vez
    dibujarPixel (0, 100) negro (tanano * 3, tanano),
    dibujarPixel (-40, 80) negro (tanano * 3, tanano),
    dibujarPixel (10, 80) azulClaro (tanano * 2, tanano),
    dibujarPixel (40, 80) negro (tanano , tanano),
    dibujarPixel (-80, 60) negro (tanano , tanano),
    dibujarPixel (-40, 60) azul (tanano * 3, tanano),
    dibujarPixel (0, 60) negro (tanano , tanano),
    dibujarPixel (30, 60) azulClaro (tanano * 2, tanano),
    dibujarPixel (60, 60) negro (tanano, tanano),
    dibujarPixel (-100, 40) negro (tanano , tanano),
    dibujarPixel (-40, 40) azul (tanano * 5, tanano),
    dibujarPixel (50, 40) negro (tanano * 4, tanano),
    dibujarPixel (-100, 20) negro (tanano , tanano),
    dibujarPixel (-40, 20) azul (tanano * 5, tanano),
    dibujarPixel (20, 20) negro (tanano, tanano),
    dibujarPixel (50, 20) azulClaro (tanano * 2, tanano),
    dibujarPixel (80, 20) azul (tanano, tanano),
    dibujarPixel (100, 20) negro (tanano, tanano),
    dibujarPixel (-120, 0) negro (tanano , tanano),
    dibujarPixel (-100, 0) azulClaro (tanano , tanano),
    dibujarPixel (-30, 0) azul (tanano * 6, tanano),
    dibujarPixel (50, 0) negro (tanano * 2, tanano),
    dibujarPixel (80, 0) azul (tanano, tanano),
    dibujarPixel (100, 0) negro (tanano, tanano),
    dibujarPixel (-120, -20) negro (tanano , tanano),
    dibujarPixel (-100, -20) azulClaro (tanano , tanano),
    dibujarPixel (-70, -20) azul (tanano * 2, tanano),
    dibujarPixel (-40, -20) piel (tanano , tanano),
    dibujarPixel (0, -20) blanco (tanano * 3, tanano),
    dibujarPixel (50, -20) azul (tanano * 2, tanano),
    dibujarPixel (80, -20) blanco (tanano, tanano),
    dibujarPixel (100, -20) negro (tanano, tanano),
    dibujarPixel (-120, -40) negro (tanano , tanano),
    dibujarPixel (-100, -40) azulClaro (tanano , tanano),
    dibujarPixel (-80, -40) azul (tanano , tanano),
    dibujarPixel (-60, -40) piel (tanano , tanano),
    dibujarPixel (-30, -40) blanco (tanano * 2, tanano),
    dibujarPixel (10, -40) negro (tanano * 2, tanano),
    dibujarPixel (40, -40) piel (tanano, tanano),
    dibujarPixel (60, -40) negro(tanano, tanano),
    dibujarPixel (80, -40) blanco(tanano, tanano),
    dibujarPixel (100, -40) negro(tanano, tanano),
    dibujarPixel (-100, -60) negro (tanano , tanano),
    dibujarPixel (-80, -60) azul (tanano , tanano),
    dibujarPixel (-60, -60) piel (tanano , tanano),
    dibujarPixel (-30, -60) blanco (tanano * 2, tanano),
    dibujarPixel (10, -60) negro (tanano * 2, tanano),
    dibujarPixel (40, -60) piel (tanano, tanano),
    dibujarPixel (60, -60) negro(tanano, tanano),
    dibujarPixel (80, -60) blanco(tanano, tanano),
    dibujarPixel (100, -60) negro(tanano, tanano),
    dibujarPixel (-110, -80) negro (tanano * 2, tanano),
    dibujarPixel (-80, -80) azul (tanano , tanano),
    dibujarPixel (-50, -80) piel (tanano * 2, tanano),
    dibujarPixel (0, -80) blanco (tanano * 3, tanano),
    dibujarPixel (40, -80) piel (tanano , tanano),
    dibujarPixel (60, -80) blanco (tanano , tanano),
    dibujarPixel (80, -80) piel (tanano , tanano),
    dibujarPixel (100, -80) negro (tanano , tanano),
    dibujarPixel (-150, -100) negro (tanano * 2, tanano),
    dibujarPixel (-110, -100) azulClaro (tanano * 2, tanano),
    dibujarPixel (-80, -100) negro (tanano, tanano),
    dibujarPixel (-60, -100) azul (tanano, tanano),
    dibujarPixel (-40, -100) piel (tanano, tanano),
    dibujarPixel (10, -100) negro (tanano * 4, tanano),
    dibujarPixel (60, -100) piel (tanano, tanano),
    dibujarPixel (100, -100) negro (tanano * 3, tanano),
    dibujarPixel (-180, -120) negro (tanano, tanano),
    dibujarPixel (-160, -120) azul (tanano, tanano),
    dibujarPixel (-110, -120) azulClaro (tanano * 4, tanano),
    dibujarPixel (-60, -120) negro (tanano , tanano),
    dibujarPixel (0, -120) piel (tanano * 5, tanano),
    dibujarPixel (60, -120) negro (tanano, tanano),
    dibujarPixel (90, -120) azulClaro (tanano * 2, tanano),
    dibujarPixel (120, -120) azul (tanano, tanano),
    dibujarPixel (140, -120) negro (tanano, tanano),
    dibujarPixel (-180, -140) negro (tanano, tanano),
    dibujarPixel (-150, -140) azul (tanano * 2, tanano),
    dibujarPixel (-90, -140) azulClaro (tanano * 4, tanano),
    dibujarPixel (0, -140) negro (tanano * 5, tanano),
    dibujarPixel (70, -140) azulClaro (tanano * 2, tanano),
    dibujarPixel (110, -140) azul (tanano * 2, tanano),
    dibujarPixel (140, -140) negro (tanano , tanano),
    dibujarPixel (-200, -160) negro (tanano, tanano),
    dibujarPixel (-160, -160) azul (tanano * 3, tanano),
    dibujarPixel (-120, -160) azulClaro (tanano, tanano),
    dibujarPixel (-100, -160) negro (tanano, tanano),
    dibujarPixel (-20, -160) azulClaro (tanano * 7, tanano),
    dibujarPixel (60, -160) negro (tanano, tanano),
    dibujarPixel (80, -160) azulClaro (tanano, tanano),
    dibujarPixel (120, -160) azul (tanano * 3, tanano),
    dibujarPixel (160, -160) negro (tanano , tanano),
    dibujarPixel (-200, -180) negro (tanano, tanano),
    dibujarPixel (-170, -180) azul (tanano * 2, tanano),
    dibujarPixel (-120, -180) negro (tanano * 3, tanano),
    dibujarPixel (-20, -180) azulClaro (tanano * 7, tanano),
    dibujarPixel (80, -180) negro (tanano * 3, tanano),
    dibujarPixel (130, -180) azul (tanano * 2, tanano),
    dibujarPixel (160, -180) negro (tanano , tanano),
    dibujarPixel (-200, -200) negro (tanano, tanano),
    dibujarPixel (-160, -200) azul (tanano * 3, tanano),
    dibujarPixel (-110, -200) negro (tanano * 2, tanano),
    dibujarPixel (-20, -200) azulClaro (tanano * 7, tanano),
    dibujarPixel (70, -200) negro (tanano * 2, tanano),
    dibujarPixel (120, -200) azul (tanano * 3, tanano),
    dibujarPixel (160, -200) negro (tanano , tanano),
    dibujarPixel (-200, -220) negro (tanano, tanano),
    dibujarPixel (-160, -220) azul (tanano * 3, tanano),
    dibujarPixel (-110, -220) negro (tanano * 2, tanano),
    dibujarPixel (-20, -220) azul (tanano * 7, tanano),
    dibujarPixel (70, -220) negro (tanano * 2, tanano),
    dibujarPixel (120, -220) azul (tanano * 3, tanano),
    dibujarPixel (160, -220) negro (tanano , tanano),
    dibujarPixel (-160, -240) negro (tanano * 3, tanano),
    dibujarPixel (-120, -240) blanco (tanano, tanano),
    dibujarPixel (-100, -240) negro (tanano, tanano),
    dibujarPixel (-20, -240) azul (tanano * 7, tanano),
    dibujarPixel (60, -240) negro (tanano, tanano),
    dibujarPixel (80, -240) blanco (tanano, tanano),
    dibujarPixel (120, -240) negro (tanano * 3, tanano),
    dibujarPixel (-120, -260) negro (tanano, tanano),
    dibujarPixel (-90, -260) azulClaro (tanano * 2, tanano),
    dibujarPixel (-20, -260) azul (tanano * 5, tanano),
    dibujarPixel (50, -260) azulClaro (tanano * 2, tanano),
    dibujarPixel (80, -260) negro (tanano , tanano),
    dibujarPixel (-140, -280) negro (tanano, tanano),
    dibujarPixel (-90, -280) azulClaro (tanano * 4, tanano),
    dibujarPixel (-20, -280) azul (tanano * 3, tanano),
    dibujarPixel (50, -280) azulClaro (tanano * 4, tanano),
    dibujarPixel (100, -280) negro (tanano , tanano),
    dibujarPixel (-150, -300) negro (tanano * 2, tanano),
    dibujarPixel (-100, -300) azul (tanano * 3, tanano),
    dibujarPixel (-50, -300) azulClaro (tanano * 2, tanano),
    dibujarPixel (-20, -300) negro (tanano, tanano),
    dibujarPixel (10, -300) azulClaro (tanano * 2, tanano),
    dibujarPixel (60, -300) azul (tanano * 3, tanano),
    dibujarPixel (110, -300) negro (tanano * 2, tanano),
    dibujarPixel (-190, -320) negro (tanano * 2, tanano),
    dibujarPixel (-110, -320) azul (tanano * 6, tanano),
    dibujarPixel (-40, -320) negro (tanano, tanano),
    dibujarPixel (-20, -320) blanco (tanano, tanano),
    dibujarPixel (0, -320) negro (tanano, tanano),
    dibujarPixel (70, -320) azul (tanano * 6, tanano),
    dibujarPixel (150, -320) negro (tanano * 2, tanano),
    dibujarPixel (-220, -340) negro (tanano, tanano),
    dibujarPixel (-140, -340) azul (tanano * 7, tanano),
    dibujarPixel (-60, -340) negro (tanano , tanano),
    dibujarPixel (-20, -340) blanco (tanano * 3, tanano),
    dibujarPixel (20, -340) negro (tanano, tanano),
    dibujarPixel (100, -340) azul (tanano * 7, tanano),
    dibujarPixel (180, -340) negro (tanano, tanano),
    dibujarPixel (-140, -360) negro (tanano * 9, tanano),
    dibujarPixel (-20, -360) blanco (tanano * 3, tanano),
    dibujarPixel (100, -360) negro (tanano * 9, tanano)
    ]

--Método que resive una tupla de coordenadas (x, y), un color, un alto y un largo
dibujarPixel :: (Float, Float) -> Color -> (Float, Float) -> Picture
dibujarPixel (x, y) col (ancho, alto) = translate x y $ color col $ rectangleSolid ancho alto