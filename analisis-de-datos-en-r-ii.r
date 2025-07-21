{
 "cells": [
  {
   "cell_type": "markdown",
   "id": "611723a6",
   "metadata": {
    "id": "tc3DMmNsSUH0",
    "papermill": {
     "duration": 0.012344,
     "end_time": "2025-07-21T02:21:03.395853",
     "exception": false,
     "start_time": "2025-07-21T02:21:03.383509",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# Resumen de los principales comandos utilizados en R\n",
    "\n",
    "| **Comando**               | **Descripción**                                                                                                                                                     | **Ejemplo de Uso**                                                                                  |\n",
    "|---------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------|\n",
    "| `library()`               | Carga una librería o paquete para usar sus funciones en R.                                                                                                         | `library(dplyr)`                                                                                  |\n",
    "| `suppressMessages()`      | Ejecuta un comando suprimiendo los mensajes informativos o de advertencia.                                                                                         | `suppressMessages(library(dplyr))`                                                                |\n",
    "| `options()`               | Establece opciones globales en R para personalizar el comportamiento de ciertas funciones o paquetes.                                                              | `options(readr.show_types = FALSE)`                                                               |\n",
    "| `read_csv()`              | Lee un archivo CSV y lo convierte en un tibble o `data.frame`.                                                                                                     | `df <- read_csv('data/file.csv')`                                                                 |\n",
    "| `read_excel()`            | Lee un archivo Excel (.xlsx o .xls) y lo convierte en un tibble o `data.frame`.                                                                                     | `df <- read_excel('data/file.xlsx')`                                                              |\n",
    "| `read_tsv()`              | Lee un archivo TSV y lo convierte en un tibble o `data.frame`.                                                                                                     | `df <- read_tsv('data/file.tsv')`                                                                 |\n",
    "| `inner_join()`            | Combina dos tibbles o `data.frames` manteniendo solo las filas con valores coincidentes en una clave común.                                                         | `result <- df1 %>% inner_join(df2, by = \"id\")`                                                    |\n",
    "| `mutate()`                | Crea o modifica columnas en un tibble o `data.frame`.                                                                                                              | `df <- df %>% mutate(new_col = old_col * 2)`                                                      |\n",
    "| `as.Date()`               | Convierte una cadena de texto en un objeto de fecha, especificando el formato.                                                                                      | `df <- df %>% mutate(date_col = as.Date(text_col, format = \"%Y-%m-%d\"))`                          |\n",
    "| `summarize()`             | Crea resúmenes de datos agregados, como promedios, mínimos o máximos, agrupados opcionalmente por una columna.                                                      | `summary <- df %>% summarize(avg_value = mean(value))`                                            |\n",
    "| `str_to_lower()`          | Convierte cadenas de texto a minúsculas, útil para estandarizar valores.                                                                                            | `df <- df %>% mutate(clean_text = str_to_lower(text_col))`                                         |\n",
    "| `str_remove()`            | Elimina patrones específicos de una cadena de texto.                                                                                                               | `df <- df %>% mutate(clean_price = str_remove(price, \" dollars\"))`                                |\n",
    "| `count()`                 | Cuenta las ocurrencias de valores únicos en una columna.                                                                                                           | `counts <- df %>% count(column_name)`                                                             |\n",
    "| `filter()`                | Filtra filas de un tibble o `data.frame` según condiciones lógicas.                                                                                                | `df <- df %>% filter(value > 10)`                                                                 |\n",
    "| `select()`                | Selecciona columnas específicas de un tibble o `data.frame`.                                                                                                       | `df <- df %>% select(col1, col2)`                                                                 |\n",
    "| `arrange()`               | Ordena filas en función de una o más columnas, en orden ascendente o descendente.                                                                                   | `df <- df %>% arrange(desc(col1))`                                                                |\n",
    "| `group_by()`              | Agrupa filas en categorías, permitiendo realizar operaciones agrupadas.                                                                                            | `df_grouped <- df %>% group_by(category_col)`                                                     |\n",
    "| `mean()`                  | Calcula el promedio de una columna numérica.                                                                                                                       | `average <- mean(df$numeric_col)`                                                                 |\n",
    "| `min()`                   | Encuentra el valor mínimo de una columna.                                                                                                                          | `minimum <- min(df$numeric_col)`                                                                  |\n",
    "| `max()`                   | Encuentra el valor máximo de una columna.                                                                                                                          | `maximum <- max(df$numeric_col)`                                                                  |\n",
    "| `round()`                 | Redondea valores numéricos a un número especificado de decimales.                                                                                                  | `df <- df %>% mutate(rounded_col = round(numeric_col, 2))`                                        |\n",
    "| `glimpse()`               | Muestra una vista rápida de las columnas y tipos de datos en un tibble o `data.frame`.                                                                              | `glimpse(df)`                                                                                     |\n",
    "| `head()`                  | Muestra las primeras filas de un tibble o `data.frame`.                                                                                                            | `head(df)`                                                                                        |\n",
    "| `tail()`                  | Muestra las últimas filas de un tibble o `data.frame`.                                                                                                             | `tail(df)`                                                                                        |\n",
    "| `as.numeric()`            | Convierte valores a formato numérico.                                                                                                                              | `df <- df %>% mutate(numeric_col = as.numeric(text_col))`                                         |\n",
    "| `print()`                 | Muestra el contenido de un objeto en la consola.                                                                                                                   | `print(df)`                                                                                       |\n",
    "| `nrow()`                  | Devuelve el número de filas en un tibble o `data.frame`.                                                                                                           | `total_rows <- nrow(df)`                                                                          |\n",
    "| `ncol()`                  | Devuelve el número de columnas en un tibble o `data.frame`.                                                                                                        | `total_columns <- ncol(df)`                                                                       |\n",
    "| `paste()`                 | Combina cadenas de texto con un separador específico.                                                                                                              | `df <- df %>% mutate(full_name = paste(first_name, last_name, sep = \" \"))`                        |\n",
    "| `unique()`                | Extrae los valores únicos de una columna o vector.                                                                                                                 | `unique_values <- unique(df$column_name)`                                                         |\n",
    "| `length()`                | Devuelve la longitud de un vector o el número de elementos en un objeto.                                                                                           | `num_elements <- length(df$column_name)`                                                          |\n",
    "| `tibble()`                | Crea un tibble manualmente.                                                                                                                                        | `df <- tibble(id = c(1, 2), name = c(\"Alice\", \"Bob\"))`                                            |\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "89c5bc24",
   "metadata": {
    "id": "ESPG5yduS29f",
    "papermill": {
     "duration": 0.010415,
     "end_time": "2025-07-21T02:21:03.416577",
     "exception": false,
     "start_time": "2025-07-21T02:21:03.406162",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# Tabla de Comandos para Joins en R con `dplyr`\n",
    "\n",
    "| **Comando**         | **Descripción**                                                                                     | **Ejemplo de Uso**                                | **Resultado Simplificado**                                                                 |\n",
    "|---------------------|-----------------------------------------------------------------------------------------------------|--------------------------------------------------|-------------------------------------------------------------------------------------------|\n",
    "| `inner_join()`      | Mantiene solo las filas con claves coincidentes en ambas tablas.                                    | `df1 %>% inner_join(df2, by = \"id\")`             | Filas comunes entre las dos tablas.                                                      |\n",
    "| `left_join()`       | Mantiene todas las filas de la tabla izquierda y agrega las columnas de la derecha si coinciden.    | `df1 %>% left_join(df2, by = \"id\")`              | Todas las filas de la tabla izquierda, con datos faltantes (`NA`) si no hay coincidencia. |\n",
    "| `right_join()`      | Mantiene todas las filas de la tabla derecha y agrega las columnas de la izquierda si coinciden.    | `df1 %>% right_join(df2, by = \"id\")`             | Todas las filas de la tabla derecha, con datos faltantes (`NA`) si no hay coincidencia.   |\n",
    "| `full_join()`       | Mantiene todas las filas de ambas tablas, combinando datos donde coincidan las claves.              | `df1 %>% full_join(df2, by = \"id\")`              | Todas las filas de ambas tablas, con datos faltantes (`NA`) donde no coincidan las claves.|\n",
    "| `anti_join()`       | Devuelve las filas de la tabla izquierda que no tienen coincidencia en la derecha.                  | `df1 %>% anti_join(df2, by = \"id\")`              | Filas de la izquierda que no aparecen en la derecha.                                      |\n",
    "| `semi_join()`       | Devuelve las filas de la tabla izquierda que tienen coincidencia en la tabla derecha.               | `df1 %>% semi_join(df2, by = \"id\")`              | Filas de la izquierda que aparecen en la derecha.                                         |\n",
    "\n",
    "---\n",
    "\n",
    "## Ejemplo de Tablas y Resultados para Joins\n",
    "\n",
    "### Tablas de Entrada\n",
    "\n",
    "**Tabla 1 (`df1`):**\n",
    "\n",
    "| id | nombre  |\n",
    "|----|---------|\n",
    "| 1  | Alice   |\n",
    "| 2  | Bob     |\n",
    "| 3  | Charlie |\n",
    "\n",
    "**Tabla 2 (`df2`):**\n",
    "\n",
    "| id | ciudad     |\n",
    "|----|------------|\n",
    "| 2  | Nueva York |\n",
    "| 3  | Londres    |\n",
    "| 4  | París      |\n",
    "\n",
    "---\n",
    "\n",
    "### Resultados para Cada Join\n",
    "\n",
    "1. **`inner_join(df1, df2, by = \"id\")`**  \n",
    "   Mantiene solo las filas con coincidencias en ambas tablas:\n",
    "\n",
    "\n",
    "   | id | nombre  | ciudad     |\n",
    "   |----|---------|------------|\n",
    "   | 2  | Bob     | Nueva York |\n",
    "   | 3  | Charlie | Londres    |\n",
    "\n",
    "2. **`left_join(df1, df2, by = \"id\")`**  \n",
    "   Todas las filas de la tabla izquierda (`df1`), con datos de la derecha donde coincidan las claves:\n",
    "\n",
    "\n",
    "   | id | nombre  | ciudad     |\n",
    "   |----|---------|------------|\n",
    "   | 1  | Alice   | NA         |\n",
    "   | 2  | Bob     | Nueva York |\n",
    "   | 3  | Charlie | Londres    |\n",
    "\n",
    "3. **`right_join(df1, df2, by = \"id\")`**  \n",
    "   Todas las filas de la tabla derecha (`df2`), con datos de la izquierda donde coincidan las claves:\n",
    "\n",
    "\n",
    "   | id | nombre  | ciudad     |\n",
    "   |----|---------|------------|\n",
    "   | 2  | Bob     | Nueva York |\n",
    "   | 3  | Charlie | Londres    |\n",
    "   | 4  | NA      | París      |\n",
    "\n",
    "4. **`full_join(df1, df2, by = \"id\")`**  \n",
    "   Todas las filas de ambas tablas:\n",
    "\n",
    "\n",
    "   | id | nombre  | ciudad     |\n",
    "   |----|---------|------------|\n",
    "   | 1  | Alice   | NA         |\n",
    "   | 2  | Bob     | Nueva York |\n",
    "   | 3  | Charlie | Londres    |\n",
    "   | 4  | NA      | París      |\n",
    "\n",
    "5. **`anti_join(df1, df2, by = \"id\")`**  \n",
    "   Filas de la izquierda que no tienen coincidencia en la derecha:\n",
    "\n",
    "\n",
    "   | id | nombre  |\n",
    "   |----|---------|\n",
    "   | 1  | Alice   |\n",
    "\n",
    "6. **`semi_join(df1, df2, by = \"id\")`**  \n",
    "   Filas de la izquierda que tienen coincidencia en la derecha:\n",
    "\n",
    "\n",
    "   | id | nombre  |\n",
    "   |----|---------|\n",
    "   | 2  | Bob     |\n",
    "   | 3  | Charlie |\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "c1183712",
   "metadata": {
    "id": "EhZln9hYWPXt",
    "papermill": {
     "duration": 0.010209,
     "end_time": "2025-07-21T02:21:03.437038",
     "exception": false,
     "start_time": "2025-07-21T02:21:03.426829",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# Explicación del Operador `%>%` en R\n",
    "\n",
    "El operador `%>%`, también conocido como **pipe**, es una herramienta que permite encadenar funciones de manera legible y estructurada. Es parte del paquete **`magrittr`**, que está incluido en **`tidyverse`**, y no forma parte del R base (nativo).\n",
    "\n",
    "---\n",
    "\n",
    "## Características del Operador `%>%`\n",
    "\n",
    "1. **Encadena Funciones**:\n",
    "   - Permite aplicar una serie de operaciones secuencialmente, enviando el resultado de una función como entrada de la siguiente.\n",
    "   - Mejora la legibilidad del código.\n",
    "\n",
    "2. **Simplifica la Sintaxis**:\n",
    "   - Elimina la necesidad de usar variables temporales o anidar múltiples funciones.\n",
    "\n",
    "3. **Compatibilidad**:\n",
    "   - Funciona principalmente con librerías del `tidyverse` como `dplyr`, `tidyr`, y `ggplot2`.\n",
    "   - Puede usarse en cualquier función en R que acepte un argumento de entrada explícito.\n",
    "\n",
    "---\n",
    "\n",
    "## Ejemplo General de Uso\n",
    "\n",
    "```r\n",
    "# Sin usar %>%\n",
    "result <- as.numeric(str_remove(price, \" dollars\"))\n",
    "```\n",
    "\n",
    "```r\n",
    "# Usando %>% para simplificar y mejorar la legibilidad\n",
    "result <- price %>%\n",
    "  str_remove(\" dollars\") %>%\n",
    "  as.numeric()\n",
    "```\n",
    "\n",
    "---\n",
    "\n",
    "## Tabla: Cuándo y Dónde Usar `%>%`\n",
    "\n",
    "| **Característica**           | **Descripción**                                                                                                     | **Ejemplo**                                                                                             |\n",
    "|------------------------------|---------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------|\n",
    "| **Propósito**                | Enviar el resultado de una operación como entrada a la siguiente función.                                           | `df %>% mutate(new_col = old_col * 2) %>% summarize(mean(new_col))`                                     |\n",
    "| **Uso Principal**            | Se utiliza con funciones del `tidyverse` o cualquier función que acepte un argumento explícito.                     | `listings %>% filter(price > 100) %>% select(id, price)`                                                |\n",
    "| **Requisitos**               | Requiere cargar el paquete `magrittr` (o `tidyverse`).                                                              | `library(dplyr)`                                                                                        |\n",
    "| **R Base vs. tidyverse**     | No es parte de R nativo, pero puede usarse fuera del `tidyverse` con funciones adecuadas.                           | `vec %>% log() %>% sqrt()`                                                                              |\n",
    "| **Alternativa en R Base**    | Sin `%>%`, se pueden encadenar funciones anidándolas, pero esto puede reducir la legibilidad.                       | `sqrt(log(vec))`                                                                                        |\n",
    "\n",
    "---\n",
    "\n",
    "## Ejemplo del Código Original\n",
    "\n",
    "```r\n",
    "avg_price <- listings %>%\n",
    "  mutate(price_clean = str_remove(price, \" dollars\") %>% # Limpia la columna \"price\" eliminando la palabra \"dollars\".\n",
    "        as.numeric()) %>%                               # Convierte el resultado a formato numérico.\n",
    "  summarize(avg_price = mean(price_clean))              # Calcula el promedio de la columna limpia.\n",
    "```\n",
    "\n",
    "### Desglose:\n",
    "\n",
    "1. `listings %>%`  \n",
    "   - El tibble `listings` es la entrada inicial para las operaciones.\n",
    "\n",
    "2. `mutate(price_clean = str_remove(price, \" dollars\") %>% as.numeric())`  \n",
    "   - Limpia los valores de `price`, eliminando \"dollars\", y convierte la columna resultante a numérica.\n",
    "\n",
    "3. `summarize(avg_price = mean(price_clean))`  \n",
    "   - Calcula el promedio (`mean()`) de la columna `price_clean`.\n",
    "\n",
    "Este ejemplo ilustra cómo el operador `%>%` mejora la claridad del código al evitar variables intermedias y anidaciones complejas.\n",
    "\n",
    "---\n",
    "\n",
    "# ¿Qué es un Tibble en R?\n",
    "\n",
    "Un **tibble** es una versión mejorada de un `data.frame` en R, diseñada para ser más legible y fácil de usar. Los tibbles son parte del paquete `tibble`, que está integrado en el ecosistema de `tidyverse`. A continuación, se describen sus principales características:\n",
    "\n",
    "---\n",
    "\n",
    "## Principales Características de un Tibble\n",
    "\n",
    "1. **Impresión Mejorada**:\n",
    "   - Muestra un número limitado de filas y columnas para evitar sobrecargar la consola.\n",
    "   - Indica el número de filas y columnas adicionales con mensajes como \"y x más variables\".\n",
    "   - No cambia el formato de los datos al mostrarlos.\n",
    "\n",
    "2. **Sin Conversión Automática de Tipos**:\n",
    "   - A diferencia de un `data.frame`, un tibble no convierte automáticamente cadenas de texto en factores.\n",
    "\n",
    "3. **Compatibilidad con el Ecosistema Tidyverse**:\n",
    "   - Los tibbles funcionan de manera óptima con funciones del `tidyverse`, como `dplyr` y `ggplot2`.\n",
    "\n",
    "4. **Columnas con Datos Complejos**:\n",
    "   - Permiten incluir listas o funciones como columnas.\n",
    "\n",
    "---\n",
    "\n",
    "## Ventajas frente a un `data.frame`\n",
    "\n",
    "| **Característica**        | **Tibble**                          | **data.frame**                     |\n",
    "|---------------------------|--------------------------------------|-------------------------------------|\n",
    "| Manejo de impresión       | Muestra un resumen legible          | Puede imprimir todo el conjunto de datos, sobrecargando la consola. |\n",
    "| Conversión automática     | No convierte cadenas en factores    | Convierte cadenas en factores por defecto. |\n",
    "| Flexibilidad de columnas  | Permite listas y datos complejos    | Restringido a vectores simples.    |\n",
    "\n",
    "---\n",
    "\n",
    "## Ejemplo de Creación de un Tibble\n",
    "\n",
    "Puedes crear un tibble manualmente o convertir un `data.frame` existente en tibble.\n",
    "\n",
    "### Crear un Tibble desde Cero\n",
    "```r\n",
    "library(tibble)\n",
    "\n",
    "# Crear un tibble manualmente\n",
    "mi_tibble <- tibble(\n",
    "  id = c(1, 2, 3),\n",
    "  nombre = c(\"Alice\", \"Bob\", \"Charlie\"),\n",
    "  edad = c(25, 30, 35)\n",
    ")\n",
    "\n",
    "print(mi_tibble)\n",
    "```\n",
    "\n",
    "### Convertir un data.frame en Tibble\n",
    "```r\n",
    "# Crear un data.frame\n",
    "mi_data_frame <- data.frame(\n",
    "  id = c(1, 2, 3),\n",
    "  nombre = c(\"Alice\", \"Bob\", \"Charlie\"),\n",
    "  edad = c(25, 30, 35)\n",
    ")\n",
    "\n",
    "# Convertir a tibble\n",
    "mi_tibble <- as_tibble(mi_data_frame)\n",
    "\n",
    "print(mi_tibble)\n",
    "```\n",
    "\n",
    "---\n",
    "\n",
    "## Resultado de un Tibble\n",
    "\n",
    "Al imprimir, un tibble puede verse así:\n",
    "```\n",
    "# A tibble: 3 × 3\n",
    "     id nombre    edad\n",
    "  <dbl> <chr>    <dbl>\n",
    "1     1 Alice       25\n",
    "2     2 Bob         30\n",
    "3     3 Charlie     35\n",
    "```\n",
    "\n",
    "Este formato compacto y estructurado facilita la lectura y análisis de datos en R.\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "da1d4830",
   "metadata": {
    "id": "T2nlrHYSXC0J",
    "papermill": {
     "duration": 0.010437,
     "end_time": "2025-07-21T02:21:03.459166",
     "exception": false,
     "start_time": "2025-07-21T02:21:03.448729",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# Trabajo con Cadenas de Texto y Fechas en R\n",
    "\n",
    "En R, las cadenas de texto y las fechas son tipos de datos comunes y tienen muchas funciones dedicadas para manipularlas de manera eficiente. Estas tareas suelen incluir limpieza, transformación, formato y análisis.\n",
    "\n",
    "---\n",
    "\n",
    "## 1. **Cadenas de Texto en R**\n",
    "\n",
    "Las cadenas de texto en R se manejan principalmente a través de funciones del paquete base y el paquete `stringr` del `tidyverse`.\n",
    "\n",
    "### Principales Funciones para Manipular Texto\n",
    "\n",
    "| **Función**            | **Descripción**                                                                                   | **Ejemplo**                                          |\n",
    "|--------------------------|-----------------------------------------------------------------------------------------------------|----------------------------------------------------|\n",
    "| `nchar()`                | Devuelve la cantidad de caracteres de una cadena.                                                  | `nchar(\"Hola\")` -> `4`                            |\n",
    "| `toupper()`              | Convierte texto a mayúsculas.                                                                      | `toupper(\"hola\")` -> `\"HOLA\"`                   |\n",
    "| `tolower()`              | Convierte texto a minúsculas.                                                                      | `tolower(\"HOLA\")` -> `\"hola\"`                   |\n",
    "| `substr()`               | Extrae o reemplaza una subcadena de una cadena.                                                    | `substr(\"Hola Mundo\", 1, 4)` -> `\"Hola\"`        |\n",
    "| `paste()` / `paste0()`   | Combina varias cadenas de texto.                                                                   | `paste(\"Hola\", \"Mundo\")` -> `\"Hola Mundo\"`     |\n",
    "| `str_detect()`           | Verifica si un patrón está presente en una cadena (requiere `stringr`).                          | `str_detect(\"Hola Mundo\", \"Mundo\")` -> `TRUE`   |\n",
    "| `str_replace()`          | Reemplaza el primer patrón encontrado en una cadena.                                               | `str_replace(\"Hola Mundo\", \"Mundo\", \"R\")` -> `\"Hola R\"` |\n",
    "| `str_remove()`           | Elimina un patrón de una cadena.                                                                   | `str_remove(\"Hola Mundo\", \"Mundo\")` -> `\"Hola \"` |\n",
    "| `str_split()`            | Divide una cadena en una lista basada en un separador.                                             | `str_split(\"a,b,c\", \",\")` -> `c(\"a\", \"b\", \"c\")` |\n",
    "\n",
    "### Ejemplo Práctico\n",
    "\n",
    "```r\n",
    "library(stringr)\n",
    "\n",
    "texto <- \"Hola Mundo\"\n",
    "# Convertir a mayúsculas\n",
    "mayusculas <- toupper(texto)\n",
    "# Reemplazar \"Mundo\" con \"R\"\n",
    "reemplazo <- str_replace(texto, \"Mundo\", \"R\")\n",
    "\n",
    "print(mayusculas)  # \"HOLA MUNDO\"\n",
    "print(reemplazo)   # \"Hola R\"\n",
    "```\n",
    "\n",
    "---\n",
    "\n",
    "## 2. **Fechas en R**\n",
    "\n",
    "Las fechas y tiempos en R se representan con clases como `Date` y `POSIXct`. Las funciones del paquete base y `lubridate` del `tidyverse` facilitan su manejo.\n",
    "\n",
    "### Principales Clases de Fechas\n",
    "\n",
    "| **Clase**   | **Descripción**                                       |\n",
    "|-------------|-------------------------------------------------------|\n",
    "| `Date`      | Representa fechas sin tiempo. Ejemplo: `\"2024-12-05\"`|\n",
    "| `POSIXct`   | Representa fechas y horas en formato compacto.        |\n",
    "| `POSIXlt`   | Representa fechas y horas como una lista de componentes. |\n",
    "\n",
    "### Principales Funciones para Manipular Fechas\n",
    "\n",
    "| **Función**               | **Descripción**                                                                 | **Ejemplo**                                                      |\n",
    "|----------------------------|-----------------------------------------------------------------------------|------------------------------------------------------------------|\n",
    "| `Sys.Date()`               | Devuelve la fecha actual en formato `Date`.                                | `Sys.Date()` -> `\"2024-12-05\"`                                 |\n",
    "| `Sys.time()`               | Devuelve la fecha y hora actual en formato `POSIXct`.                      | `Sys.time()` -> `\"2024-12-05 14:30:00\"`                        |\n",
    "| `as.Date()`                | Convierte texto en un objeto `Date`.                                       | `as.Date(\"05-12-2024\", format = \"%d-%m-%Y\")` -> `\"2024-12-05\"` |\n",
    "| `as.POSIXct()`             | Convierte texto en un objeto `POSIXct`.                                    | `as.POSIXct(\"2024-12-05 14:30:00\")`                           |\n",
    "| `format()`                 | Da formato a fechas en cadenas de texto.                                   | `format(Sys.Date(), \"%d/%m/%Y\")` -> `\"05/12/2024\"`           |\n",
    "| `difftime()`               | Calcula la diferencia entre dos fechas.                                    | `difftime(as.Date(\"2024-12-06\"), Sys.Date())` -> `\"1 day\"`   |\n",
    "| `ymd()`, `dmy()`, `mdy()`  | Convierte texto en fechas según su formato (requiere `lubridate`).             | `ymd(\"2024-12-05\")` -> `\"2024-12-05\"`                       |\n",
    "\n",
    "### Ejemplo Práctico\n",
    "\n",
    "```r\n",
    "library(lubridate)\n",
    "\n",
    "# Fecha actual\n",
    "hoy <- Sys.Date()\n",
    "\n",
    "# Convertir texto en fecha\n",
    "fecha <- ymd(\"2024-12-05\")\n",
    "\n",
    "# Calcular diferencia en días\n",
    "dias_diferencia <- as.numeric(difftime(fecha, hoy, units = \"days\"))\n",
    "\n",
    "print(hoy)              # \"2024-12-05\"\n",
    "print(fecha)            # \"2024-12-05\"\n",
    "print(dias_diferencia)  # Ejemplo: \"0\"\n",
    "```\n",
    "\n",
    "---\n",
    "\n",
    "## Tips para Trabajar con Cadenas y Fechas\n",
    "\n",
    "1. **Limpieza de Datos**:\n",
    "   - Usa `str_remove()` o `str_replace()` para eliminar o sustituir texto no deseado.\n",
    "   - Convierte cadenas de texto a minúsculas o mayúsculas para estandarizar los datos.\n",
    "\n",
    "2. **Formato de Fechas**:\n",
    "   - Siempre especifica el formato al convertir texto a fechas con `as.Date()` o `lubridate`.\n",
    "\n",
    "3. **Cálculos con Fechas**:\n",
    "   - Usa `difftime()` para calcular diferencias entre fechas.\n",
    "   - Usa `Sys.Date()` y `Sys.time()` para trabajar con la fecha y hora actual.\n",
    "\n",
    "Con estas herramientas y funciones, trabajar con cadenas de texto y fechas en R se vuelve más sencillo y eficiente.\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "4e3f5711",
   "metadata": {
    "id": "BkP-U-IiZLyv",
    "papermill": {
     "duration": 0.010147,
     "end_time": "2025-07-21T02:21:03.479897",
     "exception": false,
     "start_time": "2025-07-21T02:21:03.469750",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# Resumen de Comandos Utilizados en el Tidyverse\n",
    "\n",
    "| **Comando**                         | **Descripción**                                                                                                               | **Ejemplo**                                                                                              |\n",
    "|-------------------------------------|-------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------|\n",
    "| `library(tidyverse)`                | Carga el paquete `tidyverse`, que incluye librerías como `dplyr`, `ggplot2`, y `readr` para análisis y visualización de datos. | `library(tidyverse)`                                                                                     |\n",
    "| `read_csv()`                        | Lee un archivo CSV y lo convierte en un tibble.                                                                               | `bike_data <- read_csv(\"data/Cleaned_Bicycle_Thefts_Open_Data.csv\")`                                      |\n",
    "| `head()`                            | Muestra las primeras filas de un data frame o tibble para obtener una vista rápida de los datos.                              | `head(bike_data)`                                                                                        |\n",
    "| `group_by()`                        | Agrupa filas de un tibble según una o más columnas, útil para operaciones resumidas.                                          | `bike_data %>% group_by(quarter)`                                                                        |\n",
    "| `summarize()`                       | Crea resúmenes de datos, como conteos o promedios, basados en las columnas agrupadas.                                         | `summarize(total_per_quarter = n())`                                                                     |\n",
    "| `mutate()`                          | Crea o modifica columnas dentro de un tibble.                                                                                 | `mutate(percentage_per_location = total_per_location / total_all_location)`                              |\n",
    "| `ggplot()`                          | Inicializa una visualización con el paquete `ggplot2`.                                                                        | `ggplot(aes(x = quarter, y = total_per_quarter))`                                                        |\n",
    "| `geom_point()`                      | Agrega puntos a un gráfico.                                                                                                   | `geom_point()`                                                                                           |\n",
    "| `geom_smooth()`                     | Agrega una línea suavizada a un gráfico, con opciones para ajustar el nivel de confianza o el grado de suavizado.             | `geom_smooth(span = 0.1, se = FALSE)`                                                                    |\n",
    "| `labs()`                            | Agrega etiquetas, títulos y subtítulos a un gráfico creado con `ggplot2`.                                                     | `labs(title = \"Quarterly Trends in Bike Thefts\", y = \"The Number of Stolen Bikes\")`                      |\n",
    "| `geom_col()`                        | Crea gráficos de barras para visualización de datos categóricos.                                                              | `geom_col()`                                                                                             |\n",
    "| `coord_polar()`                     | Transforma un gráfico de barras en un gráfico circular o de tipo rosquilla.                                                   | `coord_polar(theta = \"y\")`                                                                               |\n",
    "| `theme_void()`                      | Elimina elementos visuales innecesarios en un gráfico, como ejes o líneas de cuadrícula.                                      | `theme_void()`                                                                                           |\n",
    "| `geom_text()`                       | Agrega etiquetas de texto a un gráfico, con opciones para personalizar posición y opacidad.                                   | `geom_text(aes(label = round(percentage_per_location, 2)), position = position_stack(vjust = 0.5))`      |\n",
    "| `median()`                          | Calcula la mediana de una columna numérica.                                                                                   | `median(bike_cost, na.rm = TRUE)`                                                                        |\n",
    "| `geom_point()`                      | Crea un gráfico de dispersión, útil para visualizar relaciones espaciales o geográficas.                                      | `geom_point(aes(x = long, y = lat, color = median_value), size = 4)`                                     |\n",
    "| `geom_text()`                       | Agrega etiquetas de texto a gráficos de dispersión para identificar puntos.                                                   | `geom_text(size = 1.5)`                                                                                  |\n",
    "\n",
    "---\n",
    "\n",
    "## Ejemplo de Uso\n",
    "\n",
    "### Agrupación y Resumen\n",
    "```r\n",
    "bike_data %>%\n",
    "  group_by(quarter) %>%\n",
    "  summarize(total_per_quarter = n())\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "0d072351",
   "metadata": {
    "papermill": {
     "duration": 0.011156,
     "end_time": "2025-07-21T02:21:03.501148",
     "exception": false,
     "start_time": "2025-07-21T02:21:03.489992",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": []
  },
  {
   "cell_type": "code",
   "execution_count": 1,
   "id": "e73636a0",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-07-21T02:21:03.525984Z",
     "iopub.status.busy": "2025-07-21T02:21:03.523813Z",
     "iopub.status.idle": "2025-07-21T02:21:03.960908Z",
     "shell.execute_reply": "2025-07-21T02:21:03.958837Z"
    },
    "id": "edOaWFZ0bDUT",
    "outputId": "1eb9ced8-d92f-4223-fcd6-96c68fbf8705",
    "papermill": {
     "duration": 0.451867,
     "end_time": "2025-07-21T02:21:03.963329",
     "exception": false,
     "start_time": "2025-07-21T02:21:03.511462",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\n",
      "Attaching package: ‘lubridate’\n",
      "\n",
      "\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "The following objects are masked from ‘package:base’:\n",
      "\n",
      "    date, intersect, setdiff, union\n",
      "\n",
      "\n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "[1] \"2025-07-21\"\n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "[1] \"2024-12-05\"\n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "[1] -228\n"
     ]
    }
   ],
   "source": [
    "library(lubridate)\n",
    "\n",
    "# Fecha actual\n",
    "hoy <- Sys.Date()\n",
    "\n",
    "# Convertir texto en fecha\n",
    "fecha <- ymd(\"2024-12-05\")\n",
    "\n",
    "# Calcular diferencia en días\n",
    "dias_diferencia <- as.numeric(difftime(fecha, hoy, units = \"days\"))\n",
    "\n",
    "print(hoy)              # \"2024-12-05\"\n",
    "print(fecha)            # \"2024-12-05\"\n",
    "print(dias_diferencia)  # Ejemplo: \"0\""
   ]
  },
  {
   "cell_type": "markdown",
   "id": "d2545337",
   "metadata": {
    "id": "a138556a-b9d3-4850-ba94-135e7f85f407",
    "papermill": {
     "duration": 0.011423,
     "end_time": "2025-07-21T02:21:03.985898",
     "exception": false,
     "start_time": "2025-07-21T02:21:03.974475",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# DESAFIO1: Bienvenido a la Ciudad de Nueva York\n",
    "\n",
    "Bienvenido a Nueva York, una de las ciudades más visitadas del mundo. Hay muchas propiedades en Airbnb en Nueva York para satisfacer la alta demanda de alojamientos temporales para los viajeros, que pueden variar desde unas pocas noches hasta varios meses. En este proyecto, analizarás más de cerca el mercado de Airbnb en Nueva York combinando datos de múltiples formatos de archivo como `.csv`, `.tsv` y `.xlsx` (archivos de Excel).\n",
    "\n",
    "Recuerda que los archivos **CSV**, **TSV** y **Excel** son tres formatos comunes para almacenar datos. Tienes disponibles tres archivos con datos de listados de Airbnb de 2019:\n",
    "\n",
    "### **data/airbnb_price.csv**\n",
    "Este es un archivo CSV que contiene información sobre los precios y ubicaciones de los listados de Airbnb.\n",
    "- **`listing_id`**: identificador único del listado\n",
    "- **`price`**: precio por noche del listado en USD\n",
    "- **`nbhood_full`**: nombre del distrito y vecindario donde se encuentra el listado\n",
    "\n",
    "### **data/airbnb_room_type.xlsx**\n",
    "Este es un archivo Excel que contiene información sobre las descripciones y tipos de habitaciones de los listados de Airbnb.\n",
    "- **`listing_id`**: identificador único del listado\n",
    "- **`description`**: descripción del listado\n",
    "- **`room_type`**: Airbnb tiene tres tipos de habitaciones: habitaciones compartidas, habitaciones privadas y casas/apartamentos completos\n",
    "\n",
    "### **data/airbnb_last_review.tsv**\n",
    "Este es un archivo TSV que contiene información sobre los nombres de los anfitriones de Airbnb y las fechas de las reseñas.\n",
    "- **`listing_id`**: identificador único del listado\n",
    "- **`host_name`**: nombre del anfitrión del listado\n",
    "- **`last_review`**: fecha de la última reseña del listado\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 2,
   "id": "62d509a9",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-07-21T02:21:04.046403Z",
     "iopub.status.busy": "2025-07-21T02:21:04.009312Z",
     "iopub.status.idle": "2025-07-21T02:21:04.468339Z",
     "shell.execute_reply": "2025-07-21T02:21:04.466416Z"
    },
    "executionCancelledAt": null,
    "executionTime": 330,
    "id": "50766ef4-f69d-4626-978c-fdc67ae8e7af",
    "lastExecutedAt": 1691188105424,
    "lastScheduledRunId": null,
    "lastSuccessfullyExecutedCode": "# We've loaded your first few packages for you in the first cell. Please feel free to add as many cells as you like!\nsuppressMessages(library(dplyr)) # This line is required to check your answer correctly\noptions(readr.show_types = FALSE) # This line is required to check your answer correctly\nlibrary(readr)\nlibrary(readxl)\nlibrary(stringr)\n\n",
    "papermill": {
     "duration": 0.475377,
     "end_time": "2025-07-21T02:21:04.472223",
     "exception": false,
     "start_time": "2025-07-21T02:21:03.996846",
     "status": "completed"
    },
    "tags": [],
    "vscode": {
     "languageId": "r"
    }
   },
   "outputs": [],
   "source": [
    "# Carga la librería dplyr para manipulación de datos.\n",
    "# dplyr es útil para filtrar, seleccionar, agrupar y transformar conjuntos de datos de manera eficiente.\n",
    "suppressMessages(library(dplyr))\n",
    "\n",
    "# Establece la opción para que readr no muestre los tipos de columnas al leer archivos.\n",
    "# Esto evita que se impriman mensajes innecesarios en la consola al cargar datos.\n",
    "options(readr.show_types = FALSE)\n",
    "\n",
    "# Carga la librería readr para leer archivos de texto como .csv o .tsv.\n",
    "# readr es conocida por su rendimiento y facilidad de uso al trabajar con archivos de texto estructurado.\n",
    "library(readr)\n",
    "\n",
    "# Carga la librería readxl para leer archivos Excel (.xlsx, .xls).\n",
    "# Permite importar datos desde hojas de cálculo sin necesidad de software externo como Excel.\n",
    "library(readxl)\n",
    "\n",
    "# Carga la librería stringr para manipulación de cadenas de texto.\n",
    "# stringr facilita tareas como buscar, reemplazar y transformar texto con funciones intuitivas.\n",
    "library(stringr)\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 3,
   "id": "1e6becc6",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-07-21T02:21:04.499165Z",
     "iopub.status.busy": "2025-07-21T02:21:04.497103Z",
     "iopub.status.idle": "2025-07-21T02:21:04.524989Z",
     "shell.execute_reply": "2025-07-21T02:21:04.521852Z"
    },
    "id": "ROKuCT4HQKIL",
    "papermill": {
     "duration": 0.045185,
     "end_time": "2025-07-21T02:21:04.528166",
     "exception": false,
     "start_time": "2025-07-21T02:21:04.482981",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Warning message in unzip(\"data.zip\"):\n",
      "“error 1 in extracting from zip file”\n"
     ]
    }
   ],
   "source": [
    "# descomprimiendo el archivo data.zip\n",
    "unzip(\"data.zip\")"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "0a8c1367",
   "metadata": {
    "id": "k3bO5m0WSE3w",
    "papermill": {
     "duration": 0.012157,
     "end_time": "2025-07-21T02:21:04.553196",
     "exception": false,
     "start_time": "2025-07-21T02:21:04.541039",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## Actividad 1: Crea un reporte EDA"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 4,
   "id": "5db7cb8d",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-07-21T02:21:04.581613Z",
     "iopub.status.busy": "2025-07-21T02:21:04.579835Z",
     "iopub.status.idle": "2025-07-21T02:21:05.440809Z",
     "shell.execute_reply": "2025-07-21T02:21:05.438308Z"
    },
    "id": "TEfvYoFsSD8B",
    "papermill": {
     "duration": 0.879056,
     "end_time": "2025-07-21T02:21:05.443680",
     "exception": false,
     "start_time": "2025-07-21T02:21:04.564624",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\u001b[1mRows: \u001b[22m\u001b[34m25209\u001b[39m \u001b[1mColumns: \u001b[22m\u001b[34m3\u001b[39m\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\u001b[36m──\u001b[39m \u001b[1mColumn specification\u001b[22m \u001b[36m────────────────────────────────────────────────────────\u001b[39m\n",
      "\u001b[1mDelimiter:\u001b[22m \"\\t\"\n",
      "\u001b[31mchr\u001b[39m (2): host_name, last_review\n",
      "\u001b[32mdbl\u001b[39m (1): listing_id\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\n",
      "\u001b[36mℹ\u001b[39m Use `spec()` to retrieve the full column specification for this data.\n",
      "\u001b[36mℹ\u001b[39m Specify the column types or set `show_col_types = FALSE` to quiet this message.\n"
     ]
    }
   ],
   "source": [
    "# ACA\n",
    "df_price <- read.csv(\"/kaggle/input/airbnb-price/airbnb_price.csv\")\n",
    "df_room <- read_excel(\"/kaggle/input/airbnb-room-type/airbnb_room_type.xlsx\")\n",
    "df_review <- read_tsv(\"/kaggle/input/airbnb-last-review/airbnb_last_review.tsv\")\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 5,
   "id": "f5e6efe5",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-07-21T02:21:05.472333Z",
     "iopub.status.busy": "2025-07-21T02:21:05.470039Z",
     "iopub.status.idle": "2025-07-21T02:21:05.512130Z",
     "shell.execute_reply": "2025-07-21T02:21:05.509572Z"
    },
    "papermill": {
     "duration": 0.060729,
     "end_time": "2025-07-21T02:21:05.515949",
     "exception": false,
     "start_time": "2025-07-21T02:21:05.455220",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 6 × 3</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>listing_id</th><th scope=col>price</th><th scope=col>nbhood_full</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>1</th><td>2595</td><td>225 dollars</td><td>Manhattan, Midtown        </td></tr>\n",
       "\t<tr><th scope=row>2</th><td>3831</td><td>89 dollars </td><td>Brooklyn, Clinton Hill    </td></tr>\n",
       "\t<tr><th scope=row>3</th><td>5099</td><td>200 dollars</td><td>Manhattan, Murray Hill    </td></tr>\n",
       "\t<tr><th scope=row>4</th><td>5178</td><td>79 dollars </td><td>Manhattan, Hell's Kitchen </td></tr>\n",
       "\t<tr><th scope=row>5</th><td>5238</td><td>150 dollars</td><td>Manhattan, Chinatown      </td></tr>\n",
       "\t<tr><th scope=row>6</th><td>5295</td><td>135 dollars</td><td>Manhattan, Upper West Side</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 6 × 3\n",
       "\\begin{tabular}{r|lll}\n",
       "  & listing\\_id & price & nbhood\\_full\\\\\n",
       "  & <int> & <chr> & <chr>\\\\\n",
       "\\hline\n",
       "\t1 & 2595 & 225 dollars & Manhattan, Midtown        \\\\\n",
       "\t2 & 3831 & 89 dollars  & Brooklyn, Clinton Hill    \\\\\n",
       "\t3 & 5099 & 200 dollars & Manhattan, Murray Hill    \\\\\n",
       "\t4 & 5178 & 79 dollars  & Manhattan, Hell's Kitchen \\\\\n",
       "\t5 & 5238 & 150 dollars & Manhattan, Chinatown      \\\\\n",
       "\t6 & 5295 & 135 dollars & Manhattan, Upper West Side\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 6 × 3\n",
       "\n",
       "| <!--/--> | listing_id &lt;int&gt; | price &lt;chr&gt; | nbhood_full &lt;chr&gt; |\n",
       "|---|---|---|---|\n",
       "| 1 | 2595 | 225 dollars | Manhattan, Midtown         |\n",
       "| 2 | 3831 | 89 dollars  | Brooklyn, Clinton Hill     |\n",
       "| 3 | 5099 | 200 dollars | Manhattan, Murray Hill     |\n",
       "| 4 | 5178 | 79 dollars  | Manhattan, Hell's Kitchen  |\n",
       "| 5 | 5238 | 150 dollars | Manhattan, Chinatown       |\n",
       "| 6 | 5295 | 135 dollars | Manhattan, Upper West Side |\n",
       "\n"
      ],
      "text/plain": [
       "  listing_id price       nbhood_full               \n",
       "1 2595       225 dollars Manhattan, Midtown        \n",
       "2 3831       89 dollars  Brooklyn, Clinton Hill    \n",
       "3 5099       200 dollars Manhattan, Murray Hill    \n",
       "4 5178       79 dollars  Manhattan, Hell's Kitchen \n",
       "5 5238       150 dollars Manhattan, Chinatown      \n",
       "6 5295       135 dollars Manhattan, Upper West Side"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "head(df_price)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 6,
   "id": "4f351bf6",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-07-21T02:21:05.545137Z",
     "iopub.status.busy": "2025-07-21T02:21:05.542668Z",
     "iopub.status.idle": "2025-07-21T02:21:05.586676Z",
     "shell.execute_reply": "2025-07-21T02:21:05.584146Z"
    },
    "papermill": {
     "duration": 0.077216,
     "end_time": "2025-07-21T02:21:05.605065",
     "exception": false,
     "start_time": "2025-07-21T02:21:05.527849",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 6 × 3</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>listing_id</th><th scope=col>description</th><th scope=col>room_type</th></tr>\n",
       "\t<tr><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>2595</td><td>Skylit Midtown Castle                    </td><td>Entire home/apt</td></tr>\n",
       "\t<tr><td>3831</td><td>Cozy Entire Floor of Brownstone          </td><td>Entire home/apt</td></tr>\n",
       "\t<tr><td>5099</td><td>Large Cozy 1 BR Apartment In Midtown East</td><td>Entire home/apt</td></tr>\n",
       "\t<tr><td>5178</td><td>Large Furnished Room Near B'way          </td><td>private room   </td></tr>\n",
       "\t<tr><td>5238</td><td><span style=white-space:pre-wrap>Cute &amp; Cozy Lower East Side 1 bdrm       </span></td><td>Entire home/apt</td></tr>\n",
       "\t<tr><td>5295</td><td>Beautiful 1br on Upper West Side         </td><td>Entire home/apt</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 6 × 3\n",
       "\\begin{tabular}{lll}\n",
       " listing\\_id & description & room\\_type\\\\\n",
       " <dbl> & <chr> & <chr>\\\\\n",
       "\\hline\n",
       "\t 2595 & Skylit Midtown Castle                     & Entire home/apt\\\\\n",
       "\t 3831 & Cozy Entire Floor of Brownstone           & Entire home/apt\\\\\n",
       "\t 5099 & Large Cozy 1 BR Apartment In Midtown East & Entire home/apt\\\\\n",
       "\t 5178 & Large Furnished Room Near B'way           & private room   \\\\\n",
       "\t 5238 & Cute \\& Cozy Lower East Side 1 bdrm        & Entire home/apt\\\\\n",
       "\t 5295 & Beautiful 1br on Upper West Side          & Entire home/apt\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 6 × 3\n",
       "\n",
       "| listing_id &lt;dbl&gt; | description &lt;chr&gt; | room_type &lt;chr&gt; |\n",
       "|---|---|---|\n",
       "| 2595 | Skylit Midtown Castle                     | Entire home/apt |\n",
       "| 3831 | Cozy Entire Floor of Brownstone           | Entire home/apt |\n",
       "| 5099 | Large Cozy 1 BR Apartment In Midtown East | Entire home/apt |\n",
       "| 5178 | Large Furnished Room Near B'way           | private room    |\n",
       "| 5238 | Cute &amp; Cozy Lower East Side 1 bdrm        | Entire home/apt |\n",
       "| 5295 | Beautiful 1br on Upper West Side          | Entire home/apt |\n",
       "\n"
      ],
      "text/plain": [
       "  listing_id description                               room_type      \n",
       "1 2595       Skylit Midtown Castle                     Entire home/apt\n",
       "2 3831       Cozy Entire Floor of Brownstone           Entire home/apt\n",
       "3 5099       Large Cozy 1 BR Apartment In Midtown East Entire home/apt\n",
       "4 5178       Large Furnished Room Near B'way           private room   \n",
       "5 5238       Cute & Cozy Lower East Side 1 bdrm        Entire home/apt\n",
       "6 5295       Beautiful 1br on Upper West Side          Entire home/apt"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "head(df_room)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 7,
   "id": "e7d08894",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-07-21T02:21:05.635222Z",
     "iopub.status.busy": "2025-07-21T02:21:05.633310Z",
     "iopub.status.idle": "2025-07-21T02:21:05.667996Z",
     "shell.execute_reply": "2025-07-21T02:21:05.665696Z"
    },
    "papermill": {
     "duration": 0.053591,
     "end_time": "2025-07-21T02:21:05.670981",
     "exception": false,
     "start_time": "2025-07-21T02:21:05.617390",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 6 × 3</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>listing_id</th><th scope=col>host_name</th><th scope=col>last_review</th></tr>\n",
       "\t<tr><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>2595</td><td>Jennifer   </td><td>May 21 2019 </td></tr>\n",
       "\t<tr><td>3831</td><td>LisaRoxanne</td><td>July 05 2019</td></tr>\n",
       "\t<tr><td>5099</td><td>Chris      </td><td>June 22 2019</td></tr>\n",
       "\t<tr><td>5178</td><td>Shunichi   </td><td>June 24 2019</td></tr>\n",
       "\t<tr><td>5238</td><td>Ben        </td><td>June 09 2019</td></tr>\n",
       "\t<tr><td>5295</td><td>Lena       </td><td>June 22 2019</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 6 × 3\n",
       "\\begin{tabular}{lll}\n",
       " listing\\_id & host\\_name & last\\_review\\\\\n",
       " <dbl> & <chr> & <chr>\\\\\n",
       "\\hline\n",
       "\t 2595 & Jennifer    & May 21 2019 \\\\\n",
       "\t 3831 & LisaRoxanne & July 05 2019\\\\\n",
       "\t 5099 & Chris       & June 22 2019\\\\\n",
       "\t 5178 & Shunichi    & June 24 2019\\\\\n",
       "\t 5238 & Ben         & June 09 2019\\\\\n",
       "\t 5295 & Lena        & June 22 2019\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 6 × 3\n",
       "\n",
       "| listing_id &lt;dbl&gt; | host_name &lt;chr&gt; | last_review &lt;chr&gt; |\n",
       "|---|---|---|\n",
       "| 2595 | Jennifer    | May 21 2019  |\n",
       "| 3831 | LisaRoxanne | July 05 2019 |\n",
       "| 5099 | Chris       | June 22 2019 |\n",
       "| 5178 | Shunichi    | June 24 2019 |\n",
       "| 5238 | Ben         | June 09 2019 |\n",
       "| 5295 | Lena        | June 22 2019 |\n",
       "\n"
      ],
      "text/plain": [
       "  listing_id host_name   last_review \n",
       "1 2595       Jennifer    May 21 2019 \n",
       "2 3831       LisaRoxanne July 05 2019\n",
       "3 5099       Chris       June 22 2019\n",
       "4 5178       Shunichi    June 24 2019\n",
       "5 5238       Ben         June 09 2019\n",
       "6 5295       Lena        June 22 2019"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "head(df_review)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 8,
   "id": "d4405f10",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-07-21T02:21:05.700920Z",
     "iopub.status.busy": "2025-07-21T02:21:05.698966Z",
     "iopub.status.idle": "2025-07-21T02:21:05.770332Z",
     "shell.execute_reply": "2025-07-21T02:21:05.767857Z"
    },
    "papermill": {
     "duration": 0.089949,
     "end_time": "2025-07-21T02:21:05.773524",
     "exception": false,
     "start_time": "2025-07-21T02:21:05.683575",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 6 × 7</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>listing_id</th><th scope=col>price</th><th scope=col>nbhood_full</th><th scope=col>description</th><th scope=col>room_type</th><th scope=col>host_name</th><th scope=col>last_review</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>1</th><td>2595</td><td>225 dollars</td><td>Manhattan, Midtown        </td><td>Skylit Midtown Castle                    </td><td>Entire home/apt</td><td>Jennifer   </td><td>May 21 2019 </td></tr>\n",
       "\t<tr><th scope=row>2</th><td>3831</td><td>89 dollars </td><td>Brooklyn, Clinton Hill    </td><td>Cozy Entire Floor of Brownstone          </td><td>Entire home/apt</td><td>LisaRoxanne</td><td>July 05 2019</td></tr>\n",
       "\t<tr><th scope=row>3</th><td>5099</td><td>200 dollars</td><td>Manhattan, Murray Hill    </td><td>Large Cozy 1 BR Apartment In Midtown East</td><td>Entire home/apt</td><td>Chris      </td><td>June 22 2019</td></tr>\n",
       "\t<tr><th scope=row>4</th><td>5178</td><td>79 dollars </td><td>Manhattan, Hell's Kitchen </td><td>Large Furnished Room Near B'way          </td><td>private room   </td><td>Shunichi   </td><td>June 24 2019</td></tr>\n",
       "\t<tr><th scope=row>5</th><td>5238</td><td>150 dollars</td><td><span style=white-space:pre-wrap>Manhattan, Chinatown      </span></td><td><span style=white-space:pre-wrap>Cute &amp; Cozy Lower East Side 1 bdrm       </span></td><td>Entire home/apt</td><td><span style=white-space:pre-wrap>Ben        </span></td><td>June 09 2019</td></tr>\n",
       "\t<tr><th scope=row>6</th><td>5295</td><td>135 dollars</td><td>Manhattan, Upper West Side</td><td>Beautiful 1br on Upper West Side         </td><td>Entire home/apt</td><td>Lena       </td><td>June 22 2019</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 6 × 7\n",
       "\\begin{tabular}{r|lllllll}\n",
       "  & listing\\_id & price & nbhood\\_full & description & room\\_type & host\\_name & last\\_review\\\\\n",
       "  & <dbl> & <chr> & <chr> & <chr> & <chr> & <chr> & <chr>\\\\\n",
       "\\hline\n",
       "\t1 & 2595 & 225 dollars & Manhattan, Midtown         & Skylit Midtown Castle                     & Entire home/apt & Jennifer    & May 21 2019 \\\\\n",
       "\t2 & 3831 & 89 dollars  & Brooklyn, Clinton Hill     & Cozy Entire Floor of Brownstone           & Entire home/apt & LisaRoxanne & July 05 2019\\\\\n",
       "\t3 & 5099 & 200 dollars & Manhattan, Murray Hill     & Large Cozy 1 BR Apartment In Midtown East & Entire home/apt & Chris       & June 22 2019\\\\\n",
       "\t4 & 5178 & 79 dollars  & Manhattan, Hell's Kitchen  & Large Furnished Room Near B'way           & private room    & Shunichi    & June 24 2019\\\\\n",
       "\t5 & 5238 & 150 dollars & Manhattan, Chinatown       & Cute \\& Cozy Lower East Side 1 bdrm        & Entire home/apt & Ben         & June 09 2019\\\\\n",
       "\t6 & 5295 & 135 dollars & Manhattan, Upper West Side & Beautiful 1br on Upper West Side          & Entire home/apt & Lena        & June 22 2019\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 6 × 7\n",
       "\n",
       "| <!--/--> | listing_id &lt;dbl&gt; | price &lt;chr&gt; | nbhood_full &lt;chr&gt; | description &lt;chr&gt; | room_type &lt;chr&gt; | host_name &lt;chr&gt; | last_review &lt;chr&gt; |\n",
       "|---|---|---|---|---|---|---|---|\n",
       "| 1 | 2595 | 225 dollars | Manhattan, Midtown         | Skylit Midtown Castle                     | Entire home/apt | Jennifer    | May 21 2019  |\n",
       "| 2 | 3831 | 89 dollars  | Brooklyn, Clinton Hill     | Cozy Entire Floor of Brownstone           | Entire home/apt | LisaRoxanne | July 05 2019 |\n",
       "| 3 | 5099 | 200 dollars | Manhattan, Murray Hill     | Large Cozy 1 BR Apartment In Midtown East | Entire home/apt | Chris       | June 22 2019 |\n",
       "| 4 | 5178 | 79 dollars  | Manhattan, Hell's Kitchen  | Large Furnished Room Near B'way           | private room    | Shunichi    | June 24 2019 |\n",
       "| 5 | 5238 | 150 dollars | Manhattan, Chinatown       | Cute &amp; Cozy Lower East Side 1 bdrm        | Entire home/apt | Ben         | June 09 2019 |\n",
       "| 6 | 5295 | 135 dollars | Manhattan, Upper West Side | Beautiful 1br on Upper West Side          | Entire home/apt | Lena        | June 22 2019 |\n",
       "\n"
      ],
      "text/plain": [
       "  listing_id price       nbhood_full               \n",
       "1 2595       225 dollars Manhattan, Midtown        \n",
       "2 3831       89 dollars  Brooklyn, Clinton Hill    \n",
       "3 5099       200 dollars Manhattan, Murray Hill    \n",
       "4 5178       79 dollars  Manhattan, Hell's Kitchen \n",
       "5 5238       150 dollars Manhattan, Chinatown      \n",
       "6 5295       135 dollars Manhattan, Upper West Side\n",
       "  description                               room_type       host_name  \n",
       "1 Skylit Midtown Castle                     Entire home/apt Jennifer   \n",
       "2 Cozy Entire Floor of Brownstone           Entire home/apt LisaRoxanne\n",
       "3 Large Cozy 1 BR Apartment In Midtown East Entire home/apt Chris      \n",
       "4 Large Furnished Room Near B'way           private room    Shunichi   \n",
       "5 Cute & Cozy Lower East Side 1 bdrm        Entire home/apt Ben        \n",
       "6 Beautiful 1br on Upper West Side          Entire home/apt Lena       \n",
       "  last_review \n",
       "1 May 21 2019 \n",
       "2 July 05 2019\n",
       "3 June 22 2019\n",
       "4 June 24 2019\n",
       "5 June 09 2019\n",
       "6 June 22 2019"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "df_preliminar <- left_join(df_price, df_room, by = \"listing_id\")\n",
    "df_final <- left_join(df_preliminar, df_review, by = \"listing_id\")\n",
    "head(df_final)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 9,
   "id": "cb63e162",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-07-21T02:21:05.804309Z",
     "iopub.status.busy": "2025-07-21T02:21:05.802273Z",
     "iopub.status.idle": "2025-07-21T02:25:25.246438Z",
     "shell.execute_reply": "2025-07-21T02:25:25.244249Z"
    },
    "papermill": {
     "duration": 259.46333,
     "end_time": "2025-07-21T02:25:25.249627",
     "exception": false,
     "start_time": "2025-07-21T02:21:05.786297",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Installing package into ‘/usr/local/lib/R/site-library’\n",
      "(as ‘lib’ is unspecified)\n",
      "\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Warning message:\n",
      "“unable to access index for repository http://cran.rstudio.com/src/contrib:\n",
      "  cannot open URL 'http://cran.rstudio.com/src/contrib/PACKAGES'”\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Warning message:\n",
      "“package ‘dlookr’ is not available for this version of R\n",
      "\n",
      "A version of this package for your version of R might be available elsewhere,\n",
      "see the ideas at\n",
      "https://cran.r-project.org/doc/manuals/r-patched/R-admin.html#Installing-packages”\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Installing package into ‘/usr/local/lib/R/site-library’\n",
      "(as ‘lib’ is unspecified)\n",
      "\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Warning message:\n",
      "“unable to access index for repository http://cran.rstudio.com/src/contrib:\n",
      "  cannot open URL 'http://cran.rstudio.com/src/contrib/PACKAGES'”\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Warning message:\n",
      "“package ‘dplyr’ is not available for this version of R\n",
      "\n",
      "A version of this package for your version of R might be available elsewhere,\n",
      "see the ideas at\n",
      "https://cran.r-project.org/doc/manuals/r-patched/R-admin.html#Installing-packages”\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Registered S3 methods overwritten by 'dlookr':\n",
      "  method          from  \n",
      "  plot.transform  scales\n",
      "  print.transform scales\n",
      "\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Because it is an offline environment, only offline fonts are imported.\n",
      "\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\n",
      "Attaching package: ‘dlookr’\n",
      "\n",
      "\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "The following object is masked from ‘package:base’:\n",
      "\n",
      "    transform\n",
      "\n",
      "\n"
     ]
    }
   ],
   "source": [
    "# Instalar paquetes\n",
    "install.packages(\"dlookr\")\n",
    "install.packages(\"dplyr\")  # Recomendado para manipulación de datos\n",
    "\n",
    "# Cargar paquetes\n",
    "library(dlookr)\n",
    "suppressMessages(library(dplyr))"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 10,
   "id": "030dfb55",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-07-21T02:25:25.295879Z",
     "iopub.status.busy": "2025-07-21T02:25:25.293479Z",
     "iopub.status.idle": "2025-07-21T02:25:25.382698Z",
     "shell.execute_reply": "2025-07-21T02:25:25.380001Z"
    },
    "papermill": {
     "duration": 0.122376,
     "end_time": "2025-07-21T02:25:25.385740",
     "exception": false,
     "start_time": "2025-07-21T02:25:25.263364",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "\u001b[90m# A tibble: 7 × 6\u001b[39m\n",
      "  variables   types     missing_count missing_percent unique_count unique_rate\n",
      "  \u001b[3m\u001b[90m<chr>\u001b[39m\u001b[23m       \u001b[3m\u001b[90m<chr>\u001b[39m\u001b[23m             \u001b[3m\u001b[90m<int>\u001b[39m\u001b[23m           \u001b[3m\u001b[90m<dbl>\u001b[39m\u001b[23m        \u001b[3m\u001b[90m<int>\u001b[39m\u001b[23m       \u001b[3m\u001b[90m<dbl>\u001b[39m\u001b[23m\n",
      "\u001b[90m1\u001b[39m listing_id  numeric               0          0             \u001b[4m2\u001b[24m\u001b[4m5\u001b[24m209    1       \n",
      "\u001b[90m2\u001b[39m price       character             0          0               536    0.021\u001b[4m3\u001b[24m  \n",
      "\u001b[90m3\u001b[39m nbhood_full character             0          0               217    0.008\u001b[4m6\u001b[24m\u001b[4m1\u001b[24m \n",
      "\u001b[90m4\u001b[39m description character            10          0.039\u001b[4m7\u001b[24m        \u001b[4m2\u001b[24m\u001b[4m4\u001b[24m947    0.990   \n",
      "\u001b[90m5\u001b[39m room_type   character             0          0                 9    0.000\u001b[4m3\u001b[24m\u001b[4m5\u001b[24m\u001b[4m7\u001b[24m\n",
      "\u001b[90m6\u001b[39m host_name   character             8          0.031\u001b[4m7\u001b[24m         \u001b[4m7\u001b[24m364    0.292   \n",
      "\u001b[90m7\u001b[39m last_review character             0          0               190    0.007\u001b[4m5\u001b[24m\u001b[4m4\u001b[24m \n"
     ]
    }
   ],
   "source": [
    "diagnostico <- diagnose(df_final)\n",
    "print(diagnostico)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 11,
   "id": "c2c64937",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-07-21T02:25:25.415971Z",
     "iopub.status.busy": "2025-07-21T02:25:25.413967Z",
     "iopub.status.idle": "2025-07-21T02:25:40.711042Z",
     "shell.execute_reply": "2025-07-21T02:25:40.708563Z"
    },
    "papermill": {
     "duration": 15.315238,
     "end_time": "2025-07-21T02:25:40.713860",
     "exception": false,
     "start_time": "2025-07-21T02:25:25.398622",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "1/67                         \n",
      "2/67 [setup]                 \n",
      "3/67                         \n",
      "4/67 [load_packages]         \n",
      "5/67                         \n",
      "6/67 [get-parameters]        \n",
      "7/67                         \n",
      "8/67 [unnamed-chunk-1]       \n",
      "9/67                         \n",
      "10/67 [diagose]               \n",
      "11/67                         \n",
      "12/67 [create-overview]       \n",
      "13/67                         \n",
      "14/67 [overview]              \n",
      "15/67                         \n",
      "16/67 [overview-datastructure]\n",
      "17/67                         \n",
      "18/67 [overview-pre]          \n",
      "19/67                         \n",
      "20/67 [overview-warnings]     \n",
      "21/67                         \n",
      "22/67 [warnings_summary]      \n",
      "23/67                         \n",
      "24/67 [warnings]              \n",
      "25/67                         \n",
      "26/67 [overview-variables]    \n",
      "27/67                         \n",
      "28/67 [variables]             \n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "29/67                         \n",
      "30/67 [missing]               \n",
      "31/67                         \n",
      "32/67 [missing-list]          \n",
      "33/67                         \n",
      "34/67 [missing-data]          \n",
      "35/67                         \n",
      "36/67 [missing-visualization] \n",
      "37/67                         \n",
      "38/67 [missing-viz2]          \n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Warning message in grid.Call(C_textBounds, as.graphicsAnnot(x$label), x$x, x$y, :\n",
      "\"font family 'Roboto Condensed' not found, will use 'sans' instead\"\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Warning message in grid.Call(C_textBounds, as.graphicsAnnot(x$label), x$x, x$y, :\n",
      "\"font family 'Roboto Condensed' not found, will use 'sans' instead\"\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Warning message in grid.Call(C_textBounds, as.graphicsAnnot(x$label), x$x, x$y, :\n",
      "\"font family 'Roboto Condensed' not found, will use 'sans' instead\"\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Warning message in grid.Call.graphics(C_text, as.graphicsAnnot(x$label), x$x, x$y, :\n",
      "\"font family 'Roboto Condensed' not found, will use 'sans' instead\"\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Warning message in grid.Call.graphics(C_text, as.graphicsAnnot(x$label), x$x, x$y, :\n",
      "\"font family 'Roboto Condensed' not found, will use 'sans' instead\"\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Warning message in grid.Call.graphics(C_text, as.graphicsAnnot(x$label), x$x, x$y, :\n",
      "\"font family 'Roboto Condensed' not found, will use 'sans' instead\"\n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "39/67                         \n",
      "40/67 [unique]                \n",
      "41/67                         \n",
      "42/67 [unique-categorical]    \n",
      "43/67                         \n",
      "44/67 [unique-date-category]  \n",
      "45/67                         \n",
      "46/67 [unique-numerical]      \n",
      "47/67                         \n",
      "48/67 [unique-data-numeric]   \n",
      "49/67                         \n",
      "50/67 [outliers]              \n",
      "51/67                         \n",
      "52/67 [outliers-list]         \n",
      "53/67                         \n",
      "54/67 [samples]               \n",
      "55/67                         \n",
      "56/67 [duplicated]            \n",
      "57/67                         \n",
      "58/67 [duplicated-list]       \n",
      "59/67                         \n",
      "60/67 [heades]                \n",
      "61/67                         \n",
      "62/67 [sample-head]           \n",
      "63/67                         \n",
      "64/67 [tails]                 \n",
      "65/67                         \n",
      "66/67 [sample-tail]           \n",
      "67/67                         \n",
      "/usr/bin/pandoc +RTS -K512m -RTS diagnosis_temp.knit.md --to html4 --from markdown+autolink_bare_uris+tex_math_single_backslash --output /tmp/RtmpVzoG2G/diagnostico_datos.html --lua-filter /usr/local/lib/R/site-library/rmarkdown/rmarkdown/lua/pagebreak.lua --lua-filter /usr/local/lib/R/site-library/rmarkdown/rmarkdown/lua/latex-div.lua --embed-resources --standalone --variable bs3=TRUE --section-divs --template /usr/local/lib/R/site-library/rmarkdown/rmd/h/default.html --no-highlight --variable highlightjs=1 --variable theme=bootstrap --css /usr/local/lib/R/site-library/dlookr/resources/dlookr-bootstrap.css --mathjax --variable 'mathjax-url=https://mathjax.rstudio.com/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML' --include-in-header /tmp/RtmpVzoG2G/rmarkdown-strd1cdb018.html --variable code_folding=show --variable code_menu=1 --include-in-header header_temp.html --include-after-body /usr/local/lib/R/site-library/dlookr/resources/footer.html \n"
     ]
    }
   ],
   "source": [
    "suppressMessages(diagnose_web_report(df_final, output_format = \"html\", output_file = \"diagnostico_datos.html\"))"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 12,
   "id": "5f1c0221",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-07-21T02:25:40.745202Z",
     "iopub.status.busy": "2025-07-21T02:25:40.743337Z",
     "iopub.status.idle": "2025-07-21T02:25:40.826564Z",
     "shell.execute_reply": "2025-07-21T02:25:40.824524Z"
    },
    "papermill": {
     "duration": 0.10166,
     "end_time": "2025-07-21T02:25:40.829169",
     "exception": false,
     "start_time": "2025-07-21T02:25:40.727509",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "\u001b[90m# A tibble: 1 × 26\u001b[39m\n",
      "  described_variables     n    na   mean     sd se_mean    IQR skewness kurtosis\n",
      "  \u001b[3m\u001b[90m<chr>\u001b[39m\u001b[23m               \u001b[3m\u001b[90m<int>\u001b[39m\u001b[23m \u001b[3m\u001b[90m<int>\u001b[39m\u001b[23m  \u001b[3m\u001b[90m<dbl>\u001b[39m\u001b[23m  \u001b[3m\u001b[90m<dbl>\u001b[39m\u001b[23m   \u001b[3m\u001b[90m<dbl>\u001b[39m\u001b[23m  \u001b[3m\u001b[90m<dbl>\u001b[39m\u001b[23m    \u001b[3m\u001b[90m<dbl>\u001b[39m\u001b[23m    \u001b[3m\u001b[90m<dbl>\u001b[39m\u001b[23m\n",
      "\u001b[90m1\u001b[39m listing_id          \u001b[4m2\u001b[24m\u001b[4m5\u001b[24m209     0 2.07\u001b[90me\u001b[39m7 1.10\u001b[90me\u001b[39m7  \u001b[4m6\u001b[24m\u001b[4m9\u001b[24m466. 1.84\u001b[90me\u001b[39m7   -\u001b[31m0\u001b[39m\u001b[31m.\u001b[39m\u001b[31m429\u001b[39m    -\u001b[31m1\u001b[39m\u001b[31m.\u001b[39m\u001b[31m0\u001b[39m\u001b[31m8\u001b[39m\n",
      "\u001b[90m# ℹ 17 more variables: p00 <dbl>, p01 <dbl>, p05 <dbl>, p10 <dbl>, p20 <dbl>,\u001b[39m\n",
      "\u001b[90m#   p25 <dbl>, p30 <dbl>, p40 <dbl>, p50 <dbl>, p60 <dbl>, p70 <dbl>,\u001b[39m\n",
      "\u001b[90m#   p75 <dbl>, p80 <dbl>, p90 <dbl>, p95 <dbl>, p99 <dbl>, p100 <dbl>\u001b[39m\n"
     ]
    }
   ],
   "source": [
    "descripcion <- describe(df_final)\n",
    "print(descripcion)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 13,
   "id": "1533066f",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-07-21T02:25:40.896925Z",
     "iopub.status.busy": "2025-07-21T02:25:40.895290Z",
     "iopub.status.idle": "2025-07-21T02:25:43.381924Z",
     "shell.execute_reply": "2025-07-21T02:25:43.379067Z"
    },
    "papermill": {
     "duration": 2.505651,
     "end_time": "2025-07-21T02:25:43.385383",
     "exception": false,
     "start_time": "2025-07-21T02:25:40.879732",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "\u001b[90m# A tibble: 1 × 4\u001b[39m\n",
      "  vars       statistic  p_value sample\n",
      "  \u001b[3m\u001b[90m<chr>\u001b[39m\u001b[23m          \u001b[3m\u001b[90m<dbl>\u001b[39m\u001b[23m    \u001b[3m\u001b[90m<dbl>\u001b[39m\u001b[23m  \u001b[3m\u001b[90m<dbl>\u001b[39m\u001b[23m\n",
      "\u001b[90m1\u001b[39m listing_id     0.925 1.95\u001b[90me\u001b[39m\u001b[31m-44\u001b[39m   \u001b[4m5\u001b[24m000\n"
     ]
    },
    {
     "data": {
      "image/png": "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\nl/f444+vW7fOtq2IaNiwYe7u7h06dCgpKenXr9/q1aur1qlhR02dOvXIkSNBQUFbtmwZPHhw\nHbcdHADDiTaBHdjEBx988OGHH+IRCgAAk0T6kiwsLPz6669//vnnH374oWvXrm+//fbgwYNr\nTR8tbRUWFpaUlPTxxx/bNnhwZkjsGpyVK1d6enq+8MIL/MvExMS7d+9iIEoAAF49f0m2atUq\nLCzsyJEjYrRCYgc2h3vsGpwbN25Mmzbt559/ViqVW7du3b179yuvvGLvoAAAGop6/pJ89913\njx49umzZMpVKZf59bNa1ArABO09pBlWo1epp06aFh4fL5fIWLVqsWLHC3hEBADQg9f8luXjx\n4vDwcBcXlzlz5ti2lfGEsAA2gUuxAAAAAA4Cl2IBAAAAHAQSOwAAAAAHgcQOAAAAwEEgsQMA\nAABwEEjsAAAAABwEEjsAAAAAB4HEDgAAAMBBILEDAAAAcBBI7AAAAAAcBBI7AAAAAAeBxA4A\nAADAQSCxAwAAAHAQSOwAAAAAHAQSOwAAAAAHgcQOAAAAwEHI7B2A3Zw/f37t2rU5OTmtWrWa\nPHlycHAwEd2+fXv58uUZGRnt2rWbNm2an5+fRYUAAAAAduSkZ+zKyso+/PDD4cOHr1+/Piws\nbPny5UTEcdySJUt69+69YcOGqKioL774wqJCAAAAAPty0sTuzp07bdu27dGjh7u7+7Bhw65e\nvarX62/evKnRaAYOHOjl5ZWUlHT69GmlUmlmoVqttvc2AQAAgLNz0kux7du3b9++Pb+s0+mk\nUqlEIklPT4+OjuYL3d3dAwMDMzIyMjIyzCnMzs4WSgAAAADswkkTO0F5efnWrVuffPJJiURS\nXFzs7e0tvOXj41NUVGRmYWlpqXG3er1eq9VaEc/Vq1dbt25tRcNa3b17Nzw83ObdKpXKgoIC\nkXpWqVQBAQE277mgoICIxOg5Pz/f3d3d3d3d5j1nZGQ0adLEzc3N5j2LcWC4urpKJE56NaCR\nysvLO3XqVGlpaUBAQNeuXb28vCxqXlxcfOLEiZKSkiZNmnTv3t3Nze3mzZu//fabcZ1+/fo1\nadLEJtHm5+fLZDJfX1+b9GbSpUuXYmJiXFxcROqfZdlbt261aNFCpP6JKCcnh+M4/vZxkaSn\np0dGRor3n12n0127dq1du3Yi9U9ExcXFOp3OVkdmA+HUid3mzZu3bt0aExPz/vvv09+n7oR3\n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\nIU4++WROg0W6IdgBAKDVJ598csUVVyiKMmbMmLVr10ZOoQukA4IdAACa1NXVnX322R6Pp6Cg\noKKiIj8/P9UVAR0R7AAA6JnH4zn77LP3799vs9n++te/jh49OtUVAV0g2AEA0ANZli+66KKq\nqiohxKOPPnrSSSeluiKgawQ7AAB6cMcdd7z++utCiJtuuunaa69NdTlAtwh2AABEs2rVqqVL\nlwohTj311Pvvvz/V5QDREOwAAOjWP//5z2uuuUYIceSRR65Zs4bTYJHmCHYAAHRtz5495557\nrt/vHzBgwMaNG/v375/qioAeEOwAAOiCy+WaPn16U1OTzWZbt25deXl5qisCekawAwCgI1mW\nL7744u3btwshHn/88SlTpqS6IkATgh0AAB3dfvvtFRUVQojbbrvt6quvTnU5gFYEOwAAfuS1\n11579NFHhRCnn376kiVLUl0OEAOCHQAAP/jwww/vvvtuIcS4cePWrFljsVhSXREQA4IdAADf\n+fbbb88777xgMFhYWFhRUZGbm5vqioDYEOwAABBCiLa2tunTpx84cMBut69fv76srCzVFQEx\nI9gBACBCodBFF120Y8cOk8l09913T5w4MdUVAfEg2AEAIG666aa//e1vQogFCxacddZZqS4H\niBPBDgBwuPvLX/6yfPlyIcS5556rnjkB9FHMeZcQXq+3tbU1SgefzyeEkGUlGAx2eKhDi6L+\nq3Rs71KUzrIsRzbqNayiKJEj6zWsOrKifPf86DisEEKWZSFEMBjUd1h1ZEVRdB9WHVmSJO0j\na+8py3IsnRUhhM/na2hoiNKtsLCQ+TTRh7z//vvXX3+9EOKnP/3pqlWrzGY+8kAfxs43IWw2\nW/RzqWw2mxDCZDJ1OJE+GAx2d2p9TKfcd+4cCoW6HKGXw8qyLMty5/ZeDtvdyL0fVgihRq/I\nR3UZVh058i1Br2GFEKFQKL6Re+wZCoW0dzaZTELDy5v3RfQhX3/99TnnnBMIBIYMGfL666/3\n69cv1RUBvUKwSwir1Rr9Ewv1HdRk6uItsEOLSf23q56dRelsMpkiG/UatsPIOg4rInKSvsOq\n6cRsNus7rPj+qdB92DhGjqGn+nRo7SyEEBaLJTs7O3pPoE9obm6ePn16S0tLZmbma6+9NmLE\niFRXBPQWf1gDAA5HwWDwV7/61TfffGMymZ599tmf/exnqa4I0AHBDgBwOLrxxhvffvttIcTv\n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\nwCAIdgAAAAZBsAMAADAIgh0AAIBBEOwAAAAMgmAHAABgEAQ7AAAAgyDYAQAAGATBDgAAwCAI\ndgAAAAZBsAMAADAIgh0AAIBBEOwAAAAMgmAHAABgEAQ7AAAAgyDYpdLw4cPnzZuX6iqMYPDg\nwTyTAAyGPRviQLBDnOrr60844YSsrCz2OwAMgz0b+jqCnaE8//zz06ZNS866nnvuuY8++uiL\nL7647777krPGSB22tKGhYdmyZckvA4Auou+72LMB2llTXQD09PHHHydtXS0tLUVFRWVlZUlb\nY6RkbimARIv+G82eDYiBgtQZNmzYrbfeGr775JNPjhkzJiMjY/jw4QsWLAgGg2q7x+O56qqr\nHA5HUVHRwoULX3zxRSGE2+3uMNrkyZPDP9aKigpFUQYOHLh06dK77rrL4XDs2LFDluUHHnig\nuLjYarWOHDny8ccfj6xkyZIljzzySElJSU5OzimnnFJbW6s+9OWXX5555pkDBgzo16/fhAkT\n3njjDUVRfvGLX4TXNWfOnOj1dyhj2LBh99577+LFi4uKihwOx9VXX+33++fPn19UVFRUVLRo\n0aJwVd0V3HlLBw0apOWZjLKZAOLW5V5CURSPxzNr1qycnJzCwsIbbrhh1apVeXl5LpdL+fFu\nofNvdCT2bOEF2bNBC4JdKkUGu2eeecZms61du7a1tfWf//znwIEDb775ZvWhG2+8sX///v/3\nf//ndDqvvPLKY489VggR/pWONHny5DPPPDN8t6SkZNasWRaLRQjx6aefPv744xaL5W9/+5vb\n7X7hhReEEG+//bbac9SoUUcfffTs2bMbGxv//e9/FxcXT5s2TVEUSZJKS0vPPffchoaGtra2\nxYsX22y2r776SlGUW2+9ddiwYeF1Ram/QxmjRo0aN27cokWLWlpannzySSHEiSeeuHDhwpaW\nlqeffloI8e6776oLRim4w5ZG7v6iVNLdZgKIW/S9RF5e3pYtW5qbmxcvXlxcXCyECAQCSqfd\nQoff6A7Ys0WvhD0bIhHsUiky2JWUlMyePTv80P3332+3210uVzAYdDgc8+fPV9u9Xm9RUZHG\nYDdq1KhBgwY9+uijfr9fkqTjjjvu1FNPDT963HHHzZw5M9yzqKjI7/erdxcsWJCdnS3L8jff\nfBO5P5JlefHixTt27FA67f66q79zGaNGjSopKZFlWVEUSZJycnKKi4vVu6FQKDc3d/HixeEK\n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\nT8+xY8f03wl3u93BYHDbtm2lpaWvvPJKT0/P1NSUwdaZmRnBEd65c6e2tnbr1q2qqr788ssu\nlysYDEa3ih/P+AiNYzAeYWFB6lltWiK3mDKlM2JkZCR+MUmYTuqNZuf0f4aGhq5cuRI5oKUk\n+UvlXGqhUOinn37avXu3qqrbtm1788035+fnl5JaIBAwO6eFUdhZVDgc/u6771pbW/U3IZue\nnn7wwQfNCqmjoyPmtm03b96MfsCrqupwOG7dumWwdWRkRHCEDQ0N77//fvRpXl6eueMZH6Fx\nDMYjnCXxQUZZcFoit5gypTOipqYmfjFJmE7qjYJTMHb+/Pmnn346+k+aHKn19/dXVlaWl5cr\nilJQULBx48a8vLylpDY8PGxKImmhsLOonp6e4uLiJ554Qt8YCARmZmaOHDnS0tJy6NCh/v5+\nkSHF35bW4/HY7fbo07KysvHxcYOtfr9fcIR6169fX7dunX4f8eMZH6FxDMYjLCzIKAtOS+SW\n+Cnt8XhMjGdxootJwndo6o1CgzZ09+7d3377rbW1NdoiR2r37t3TNO306dM7d+7s6OhwuVzK\n0lLzer0i418cCjuLunTp0vPPP5+Xl6dvDAQC09PTL7zwwhdffNHU1PTBBx/Mzc2ZFaGiKLOz\ns/pfmygsLNSfbI3fGgqFhMan4/V6z549u3PnTn1j/HiGw2HBgRnHYDzC4qU4LcUPI3KF1ab0\nIugXk4TppN4oMmxjX3/99fbt2ysrK6MtcqQWDAb//vvv6urqs2fPPvPMM52dneFweCmpzc7O\nCk1gUSjsrGhqaur333/fsmVLTHtTU9OFCxeefPJJm822a9cun883ODhoRoD/VVRUpP8ID4VC\n+mut4rea9VNUfr//6NGjW7Zs2bRpk749fjxv3rwpODbjGIxHWLDUp6V1TsTAaiw1pRchZjFJ\nmE7qjSIjN3Dnzp3e3t7m5mZ9oxypLVu2rLi4+MUXX1RVtbm52efzDQwMLCW1nPjlMQo7K+rt\n7a2vry8tLTXYp6CgQNO0bJ/cNKZp2sTERPSpx+OpqKgw2Gqz2YTGpyiKooRCoWPHjj388MOv\nvvqqwW6R8dQHLF58DMYjLFjq0zInzlbAFPFTOjfuH6EoSqLFJOE7NPVGYZEbu3DhwtjYWEtL\ny/bt23t7e997773z58/LkVpZWVn0cyc/P1/TtMiUW3Rq+jOzlkVhZ0U3btxYv359wvbu7u7I\n49nZ2fv370euCTWL0+l0u92Rx5OTk2NjY/X19QZbHQ6H+CC7uro0TduzZ0/8pvjxXL58udjo\nFojBeIQFS31a6k/oAHqWmtLpil9MEqaTeqPg+JNpb2+/+D+PPfbYu+++29LSIkdqq1atGhkZ\niXxLNxwOj46OOhyOpaRWXV1tSiJpobCzovgKo62t7dq1a6qqdnV1/fnnn1NTU1999VVNTU1V\nVZVZQSqKsmbNGrvd3t3dPTk5ee7cuc2bN0eOwEeijd8q/lTs2NjYpUuX9u3bF3NZWLLxFL8e\nJYsh2RiaeI4j9WlZW1trVpCwOEtN6bR4vd74xSRhOqk3mpjOguRIzW63b9y4saury+fzffPN\nN8uXL1+5cuVSUsuJU7F58/PzZseAWMePH3/uuef03z08dOhQa2vrhg0bfv3114sXL46Pjzud\nzt27dws74j01NdXe3q5vefvttxsbG4eGhj777LOBgYGmpqa2trbIQe9otAm3ioxweHj4yy+/\n1De+8847a9euNWU8Z2dn9+7dGxNhY2NjwhhMGUMl+R9aseS0RC4SPKUz5fr16ydPntS3RBaT\nhOmk3mg1nZ2dW7duffTRR5V0srByal6v98yZM//8809tbe2ePXsih9zkSC0ZCjsAAABJcCoW\nAABAEhR2AAAAkqCwAwAAkASFHQAAgCQo7AAAACRBYQcAACAJCjsAAABJUNgBAABIgsIOAABA\nEhR2AAAAkqCwAwAAkASFHQAAgCQo7AAAACRBYQcAACAJCjsAAABJUNgBAABIgsIOAABAEhR2\nAAAAkqCwAwAAkASFHQAAgCQo7AAAACRBYQcAACAJCjsAAABJUNgBAABIgsIOAABAEhR2AAAA\nkqCwAwAAkASFHQAAgCQo7AAAACRBYQcAACAJEubv9gAAAJhJREFUCjsAAABJUNgBAABIgsIO\nAABAEhR2AAAAkqCwAwAAkASFHQAAgCQo7AAAACRBYQcAACAJCjsAAABJUNgBAABIgsIOAABA\nEhR2AAAAkqCwAwAAkASFHQAAgCQo7AAAACRBYQcAACAJCjsAAABJUNgBAABIgsIOAABAEhR2\nAAAAkqCwAwAAkASFHQAAgCQo7AAAACTxH1kzCgVXgguHAAAAAElFTkSuQmCC"
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "normalidad <- normality(df_final)\n",
    "print(normalidad)\n",
    "\n",
    "# Visualización de normalidad\n",
    "plot_normality(df_final)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 14,
   "id": "79dbd7b7",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-07-21T02:25:43.419610Z",
     "iopub.status.busy": "2025-07-21T02:25:43.417974Z",
     "iopub.status.idle": "2025-07-21T02:25:57.995996Z",
     "shell.execute_reply": "2025-07-21T02:25:57.991703Z"
    },
    "papermill": {
     "duration": 14.59886,
     "end_time": "2025-07-21T02:25:57.999419",
     "exception": false,
     "start_time": "2025-07-21T02:25:43.400559",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\n",
      "\n",
      "processing file: eda_paged_temp.Rmd\n",
      "\n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "1/35                                 \n",
      "2/35 [setup]                         \n",
      "3/35                                 \n",
      "4/35 [packages]                      \n",
      "5/35                                 \n",
      "6/35 [unnamed-chunk-1]               \n",
      "7/35                                 \n",
      "8/35 [overview-pre]                  \n",
      "9/35                                 \n",
      "10/35 [overview]                      \n",
      "11/35                                 \n",
      "12/35 [overview-job]                  \n",
      "13/35                                 \n",
      "14/35 [check_variables]               \n",
      "15/35                                 \n",
      "16/35 [descriptive-numerical]         \n",
      "17/35                                 \n",
      "18/35 [descriptive-numerical-detail]  \n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Warning message in grid.Call(C_textBounds, as.graphicsAnnot(x$label), x$x, x$y, :\n",
      "\"font family 'Roboto Condensed' not found, will use 'sans' instead\"\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Warning message in grid.Call(C_textBounds, as.graphicsAnnot(x$label), x$x, x$y, :\n",
      "\"font family 'Roboto Condensed' not found, will use 'sans' instead\"\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Warning message in grid.Call(C_textBounds, as.graphicsAnnot(x$label), x$x, x$y, :\n",
      "\"font family 'Roboto Condensed' not found, will use 'sans' instead\"\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Warning message in grid.Call(C_textBounds, as.graphicsAnnot(x$label), x$x, x$y, :\n",
      "\"font family 'Roboto Condensed Light' not found, will use 'sans' instead\"\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Warning message in grid.Call(C_textBounds, as.graphicsAnnot(x$label), x$x, x$y, :\n",
      "\"font family 'Roboto Condensed Light' not found, will use 'sans' instead\"\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Warning message in grid.Call.graphics(C_text, as.graphicsAnnot(x$label), x$x, x$y, :\n",
      "\"font family 'Roboto Condensed Light' not found, will use 'sans' instead\"\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Warning message in grid.Call.graphics(C_text, as.graphicsAnnot(x$label), x$x, x$y, :\n",
      "\"font family 'Roboto Condensed Light' not found, will use 'sans' instead\"\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Warning message in grid.Call.graphics(C_text, as.graphicsAnnot(x$label), x$x, x$y, :\n",
      "\"font family 'Roboto Condensed Light' not found, will use 'sans' instead\"\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Warning message in grid.Call.graphics(C_text, as.graphicsAnnot(x$label), x$x, x$y, :\n",
      "\"font family 'Roboto Condensed' not found, will use 'sans' instead\"\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Warning message in grid.Call.graphics(C_text, as.graphicsAnnot(x$label), x$x, x$y, :\n",
      "\"font family 'Roboto Condensed' not found, will use 'sans' instead\"\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Warning message in grid.Call.graphics(C_text, as.graphicsAnnot(x$label), x$x, x$y, :\n",
      "\"font family 'Roboto Condensed' not found, will use 'sans' instead\"\n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "19/35                                 \n",
      "20/35 [descriptive-categorical]       \n",
      "21/35                                 \n",
      "22/35 [descriptive-categorical-detail]\n",
      "23/35                                 \n",
      "24/35 [normality]                     \n",
      "25/35                                 \n",
      "26/35 [normality-detail]              \n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Warning message in grid.Call(C_textBounds, as.graphicsAnnot(x$label), x$x, x$y, :\n",
      "\"font family 'Roboto Condensed' not found, will use 'sans' instead\"\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Warning message in grid.Call(C_textBounds, as.graphicsAnnot(x$label), x$x, x$y, :\n",
      "\"font family 'Roboto Condensed' not found, will use 'sans' instead\"\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Warning message in grid.Call(C_textBounds, as.graphicsAnnot(x$label), x$x, x$y, :\n",
      "\"font family 'Roboto Condensed' not found, will use 'sans' instead\"\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Warning message in grid.Call.graphics(C_text, as.graphicsAnnot(x$label), x$x, x$y, :\n",
      "\"font family 'Roboto Condensed' not found, will use 'sans' instead\"\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Warning message in grid.Call.graphics(C_text, as.graphicsAnnot(x$label), x$x, x$y, :\n",
      "\"font family 'Roboto Condensed' not found, will use 'sans' instead\"\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Warning message in grid.Call.graphics(C_text, as.graphicsAnnot(x$label), x$x, x$y, :\n",
      "\"font family 'Roboto Condensed' not found, will use 'sans' instead\"\n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "27/35                                 \n",
      "28/35 [compare-numerical]             \n",
      "29/35                                 \n",
      "30/35 [compare-categorical]           \n",
      "31/35                                 \n",
      "32/35 [correlation]                   \n",
      "33/35                                 \n",
      "34/35 [plot-correlation]              \n",
      "35/35                                 \n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "output file: eda_paged_temp.knit.md\n",
      "\n",
      "\n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "/usr/bin/pandoc +RTS -K512m -RTS eda_paged_temp.knit.md --to html4 --from markdown+autolink_bare_uris+tex_math_single_backslash --output /kaggle/working/informe_eda.html --lua-filter /usr/local/lib/R/site-library/bookdown/rmarkdown/lua/custom-environment.lua --lua-filter /usr/local/lib/R/site-library/rmarkdown/rmarkdown/lua/pagebreak.lua --lua-filter /usr/local/lib/R/site-library/rmarkdown/rmarkdown/lua/latex-div.lua --embed-resources --standalone --wrap preserve --lua-filter /usr/local/lib/R/site-library/pagedown/resources/lua/uri-to-fn.lua --lua-filter /usr/local/lib/R/site-library/pagedown/resources/lua/loft.lua --lua-filter /usr/local/lib/R/site-library/pagedown/resources/lua/footnotes.lua --include-in-header /tmp/RtmpVzoG2G/filed2cdc1708.html '--mathjax=https://mathjax.rstudio.com/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML' --metadata newpage_html_class=\"page-break-after\" --section-divs --table-of-contents --toc-depth 3 --template /usr/local/lib/R/site-library/pagedown/resources/html/paged.html --highlight-style pygments --css /usr/local/lib/R/site-library/dlookr/resources/css/custom-fonts.css --css /usr/local/lib/R/site-library/dlookr/resources/css/custom-page-blue.css --css /usr/local/lib/R/site-library/dlookr/resources/css/custom-blue.css --include-in-header /tmp/RtmpVzoG2G/rmarkdown-strd74a2b7a2.html \n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\n",
      "Output created: informe_eda.html\n",
      "\n"
     ]
    }
   ],
   "source": [
    "# Crear un informe EDA completo\n",
    "eda_paged_report(\n",
    "  df_final,\n",
    "  #target = \"variable_objetivo\",       # Variable objetivo (opcional)\n",
    "  output_format = \"html\",             # Formato del informe: \"html\" o \"pdf\"\n",
    "  output_file = \"informe_eda.html\",   # Nombre del archivo de salida\n",
    "  output_dir = getwd(),               # Directorio de salida\n",
    "  title = \"Informe de Análisis Exploratorio de Datos\",  # Título del informe\n",
    "  subtitle = \"Descripción del conjunto de datos\",       # Subtítulo del informe\n",
    "  author = \"Nombre del Autor\",        # Autor del informe\n",
    "  abstract = \"Este informe proporciona un análisis exploratorio detallado del conjunto de datos.\",  # Resumen\n",
    "  theme = \"blue\"                      # Tema del informe: \"orange\" o \"blue\"\n",
    ")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 15,
   "id": "7011acbd",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-07-21T02:25:58.043037Z",
     "iopub.status.busy": "2025-07-21T02:25:58.041450Z",
     "iopub.status.idle": "2025-07-21T02:26:06.388858Z",
     "shell.execute_reply": "2025-07-21T02:26:06.386373Z"
    },
    "papermill": {
     "duration": 8.372261,
     "end_time": "2025-07-21T02:26:06.391760",
     "exception": false,
     "start_time": "2025-07-21T02:25:58.019499",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\n",
      "\n",
      "processing file: eda_temp.Rmd\n",
      "\n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "1/63                    \n",
      "2/63 [setup]            \n",
      "3/63                    \n",
      "4/63 [load_packages]    \n",
      "5/63                    \n",
      "6/63 [unnamed-chunk-1]  \n",
      "7/63                    \n",
      "8/63 [udf]              \n",
      "9/63                    \n",
      "10/63 [check_variables]  \n",
      "11/63                    \n",
      "12/63 [create-overview]  \n",
      "13/63                    \n",
      "14/63 [overview]         \n",
      "15/63                    \n",
      "16/63 [overview-pre]     \n",
      "17/63                    \n",
      "18/63 [unnamed-chunk-2]  \n",
      "19/63                    \n",
      "20/63 [unnamed-chunk-3]  \n",
      "21/63                    \n",
      "22/63 [variables]        \n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "23/63                    \n",
      "24/63 [normality]        \n",
      "25/63                    \n",
      "26/63 [normality-list]   \n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "27/63                    \n",
      "28/63 [unnamed-chunk-4]  \n",
      "29/63                    \n",
      "30/63 [unnamed-chunk-5]  \n",
      "31/63                    \n",
      "32/63 [compare_numerical]\n",
      "33/63                    \n",
      "34/63 [unnamed-chunk-6]  \n",
      "35/63                    \n",
      "36/63 [compare-category] \n",
      "37/63                    \n",
      "38/63 [unnamed-chunk-7]  \n",
      "39/63                    \n",
      "40/63 [unnamed-chunk-8]  \n",
      "41/63                    \n",
      "42/63 [unnamed-chunk-9]  \n",
      "43/63                    \n",
      "44/63 [correlation]      \n",
      "45/63                    \n",
      "46/63 [unnamed-chunk-10] \n",
      "47/63                    \n",
      "48/63 [plot-correlation] \n",
      "49/63                    \n",
      "50/63 [unnamed-chunk-11] \n",
      "51/63                    \n",
      "52/63 [unnamed-chunk-12] \n",
      "53/63                    \n",
      "54/63 [group-numerical]  \n",
      "55/63                    \n",
      "56/63 [unnamed-chunk-13] \n",
      "57/63                    \n",
      "58/63 [group-categorical]\n",
      "59/63                    \n",
      "60/63 [unnamed-chunk-14] \n",
      "61/63                    \n",
      "62/63 [group-correlation]\n",
      "63/63                    \n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "output file: eda_temp.knit.md\n",
      "\n",
      "\n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "/usr/bin/pandoc +RTS -K512m -RTS eda_temp.knit.md --to html4 --from markdown+autolink_bare_uris+tex_math_single_backslash --output /kaggle/working/informe_eda_web.html --lua-filter /usr/local/lib/R/site-library/rmarkdown/rmarkdown/lua/pagebreak.lua --lua-filter /usr/local/lib/R/site-library/rmarkdown/rmarkdown/lua/latex-div.lua --embed-resources --standalone --variable bs3=TRUE --section-divs --template /usr/local/lib/R/site-library/rmarkdown/rmd/h/default.html --no-highlight --variable highlightjs=1 --variable theme=bootstrap --css /usr/local/lib/R/site-library/dlookr/resources/dlookr-bootstrap.css --mathjax --variable 'mathjax-url=https://mathjax.rstudio.com/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML' --include-in-header /tmp/RtmpVzoG2G/rmarkdown-strd1909f76a.html --variable code_folding=show --variable code_menu=1 --include-in-header header_temp.html --include-after-body /usr/local/lib/R/site-library/dlookr/resources/footer.html \n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\n",
      "Output created: informe_eda_web.html\n",
      "\n"
     ]
    }
   ],
   "source": [
    "# Crear un informe EDA dinámico\n",
    "eda_web_report(\n",
    "  df_final,\n",
    " # target = \"variable_objetivo\",       # Variable objetivo (opcional)\n",
    "  output_file = \"informe_eda_web.html\", # Nombre del archivo de salida\n",
    "  output_dir = getwd(),               # Directorio de salida\n",
    "  title = \"Informe EDA Interactivo\",  # Título del informe\n",
    "  subtitle = \"Exploración Dinámica de Datos\",  # Subtítulo del informe\n",
    "  theme = \"blue\"                      # Tema del informe\n",
    ")"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "70d05a76",
   "metadata": {
    "id": "7sdl3UWgSQuU",
    "papermill": {
     "duration": 0.016819,
     "end_time": "2025-07-21T02:26:06.425729",
     "exception": false,
     "start_time": "2025-07-21T02:26:06.408910",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## Actividad 2: Verifica y corrige errores en las columnas, como valores faltantes, nulos y tipo correcto"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 16,
   "id": "39370f03",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-07-21T02:26:06.463029Z",
     "iopub.status.busy": "2025-07-21T02:26:06.461488Z",
     "iopub.status.idle": "2025-07-21T02:26:06.488974Z",
     "shell.execute_reply": "2025-07-21T02:26:06.487240Z"
    },
    "papermill": {
     "duration": 0.048867,
     "end_time": "2025-07-21T02:26:06.491300",
     "exception": false,
     "start_time": "2025-07-21T02:26:06.442433",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 6 × 7</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>listing_id</th><th scope=col>price</th><th scope=col>nbhood_full</th><th scope=col>description</th><th scope=col>room_type</th><th scope=col>host_name</th><th scope=col>last_review</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>1</th><td>2595</td><td>225 dollars</td><td>Manhattan, Midtown        </td><td>Skylit Midtown Castle                    </td><td>Entire home/apt</td><td>Jennifer   </td><td>May 21 2019 </td></tr>\n",
       "\t<tr><th scope=row>2</th><td>3831</td><td>89 dollars </td><td>Brooklyn, Clinton Hill    </td><td>Cozy Entire Floor of Brownstone          </td><td>Entire home/apt</td><td>LisaRoxanne</td><td>July 05 2019</td></tr>\n",
       "\t<tr><th scope=row>3</th><td>5099</td><td>200 dollars</td><td>Manhattan, Murray Hill    </td><td>Large Cozy 1 BR Apartment In Midtown East</td><td>Entire home/apt</td><td>Chris      </td><td>June 22 2019</td></tr>\n",
       "\t<tr><th scope=row>4</th><td>5178</td><td>79 dollars </td><td>Manhattan, Hell's Kitchen </td><td>Large Furnished Room Near B'way          </td><td>private room   </td><td>Shunichi   </td><td>June 24 2019</td></tr>\n",
       "\t<tr><th scope=row>5</th><td>5238</td><td>150 dollars</td><td><span style=white-space:pre-wrap>Manhattan, Chinatown      </span></td><td><span style=white-space:pre-wrap>Cute &amp; Cozy Lower East Side 1 bdrm       </span></td><td>Entire home/apt</td><td><span style=white-space:pre-wrap>Ben        </span></td><td>June 09 2019</td></tr>\n",
       "\t<tr><th scope=row>6</th><td>5295</td><td>135 dollars</td><td>Manhattan, Upper West Side</td><td>Beautiful 1br on Upper West Side         </td><td>Entire home/apt</td><td>Lena       </td><td>June 22 2019</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 6 × 7\n",
       "\\begin{tabular}{r|lllllll}\n",
       "  & listing\\_id & price & nbhood\\_full & description & room\\_type & host\\_name & last\\_review\\\\\n",
       "  & <dbl> & <chr> & <chr> & <chr> & <chr> & <chr> & <chr>\\\\\n",
       "\\hline\n",
       "\t1 & 2595 & 225 dollars & Manhattan, Midtown         & Skylit Midtown Castle                     & Entire home/apt & Jennifer    & May 21 2019 \\\\\n",
       "\t2 & 3831 & 89 dollars  & Brooklyn, Clinton Hill     & Cozy Entire Floor of Brownstone           & Entire home/apt & LisaRoxanne & July 05 2019\\\\\n",
       "\t3 & 5099 & 200 dollars & Manhattan, Murray Hill     & Large Cozy 1 BR Apartment In Midtown East & Entire home/apt & Chris       & June 22 2019\\\\\n",
       "\t4 & 5178 & 79 dollars  & Manhattan, Hell's Kitchen  & Large Furnished Room Near B'way           & private room    & Shunichi    & June 24 2019\\\\\n",
       "\t5 & 5238 & 150 dollars & Manhattan, Chinatown       & Cute \\& Cozy Lower East Side 1 bdrm        & Entire home/apt & Ben         & June 09 2019\\\\\n",
       "\t6 & 5295 & 135 dollars & Manhattan, Upper West Side & Beautiful 1br on Upper West Side          & Entire home/apt & Lena        & June 22 2019\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 6 × 7\n",
       "\n",
       "| <!--/--> | listing_id &lt;dbl&gt; | price &lt;chr&gt; | nbhood_full &lt;chr&gt; | description &lt;chr&gt; | room_type &lt;chr&gt; | host_name &lt;chr&gt; | last_review &lt;chr&gt; |\n",
       "|---|---|---|---|---|---|---|---|\n",
       "| 1 | 2595 | 225 dollars | Manhattan, Midtown         | Skylit Midtown Castle                     | Entire home/apt | Jennifer    | May 21 2019  |\n",
       "| 2 | 3831 | 89 dollars  | Brooklyn, Clinton Hill     | Cozy Entire Floor of Brownstone           | Entire home/apt | LisaRoxanne | July 05 2019 |\n",
       "| 3 | 5099 | 200 dollars | Manhattan, Murray Hill     | Large Cozy 1 BR Apartment In Midtown East | Entire home/apt | Chris       | June 22 2019 |\n",
       "| 4 | 5178 | 79 dollars  | Manhattan, Hell's Kitchen  | Large Furnished Room Near B'way           | private room    | Shunichi    | June 24 2019 |\n",
       "| 5 | 5238 | 150 dollars | Manhattan, Chinatown       | Cute &amp; Cozy Lower East Side 1 bdrm        | Entire home/apt | Ben         | June 09 2019 |\n",
       "| 6 | 5295 | 135 dollars | Manhattan, Upper West Side | Beautiful 1br on Upper West Side          | Entire home/apt | Lena        | June 22 2019 |\n",
       "\n"
      ],
      "text/plain": [
       "  listing_id price       nbhood_full               \n",
       "1 2595       225 dollars Manhattan, Midtown        \n",
       "2 3831       89 dollars  Brooklyn, Clinton Hill    \n",
       "3 5099       200 dollars Manhattan, Murray Hill    \n",
       "4 5178       79 dollars  Manhattan, Hell's Kitchen \n",
       "5 5238       150 dollars Manhattan, Chinatown      \n",
       "6 5295       135 dollars Manhattan, Upper West Side\n",
       "  description                               room_type       host_name  \n",
       "1 Skylit Midtown Castle                     Entire home/apt Jennifer   \n",
       "2 Cozy Entire Floor of Brownstone           Entire home/apt LisaRoxanne\n",
       "3 Large Cozy 1 BR Apartment In Midtown East Entire home/apt Chris      \n",
       "4 Large Furnished Room Near B'way           private room    Shunichi   \n",
       "5 Cute & Cozy Lower East Side 1 bdrm        Entire home/apt Ben        \n",
       "6 Beautiful 1br on Upper West Side          Entire home/apt Lena       \n",
       "  last_review \n",
       "1 May 21 2019 \n",
       "2 July 05 2019\n",
       "3 June 22 2019\n",
       "4 June 24 2019\n",
       "5 June 09 2019\n",
       "6 June 22 2019"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "head(df_final)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "7b31818c",
   "metadata": {
    "papermill": {
     "duration": 0.017535,
     "end_time": "2025-07-21T02:26:06.525597",
     "exception": false,
     "start_time": "2025-07-21T02:26:06.508062",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Hallazgos:\n",
    "* Columna \"price\" guardada como caracter. Además, es necesario limpar y eliminar palabra \"dollars\"\n",
    "* Columna \"last_review\" guardada como caracter. El tipo debe ser cambiado a fecha."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 17,
   "id": "1e6cde1f",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-07-21T02:26:06.563545Z",
     "iopub.status.busy": "2025-07-21T02:26:06.561997Z",
     "iopub.status.idle": "2025-07-21T02:26:06.615428Z",
     "shell.execute_reply": "2025-07-21T02:26:06.612715Z"
    },
    "papermill": {
     "duration": 0.075586,
     "end_time": "2025-07-21T02:26:06.618361",
     "exception": false,
     "start_time": "2025-07-21T02:26:06.542775",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "\u001b[90m# A tibble: 7 × 6\u001b[39m\n",
      "  variables   types     missing_count missing_percent unique_count unique_rate\n",
      "  \u001b[3m\u001b[90m<chr>\u001b[39m\u001b[23m       \u001b[3m\u001b[90m<chr>\u001b[39m\u001b[23m             \u001b[3m\u001b[90m<int>\u001b[39m\u001b[23m           \u001b[3m\u001b[90m<dbl>\u001b[39m\u001b[23m        \u001b[3m\u001b[90m<int>\u001b[39m\u001b[23m       \u001b[3m\u001b[90m<dbl>\u001b[39m\u001b[23m\n",
      "\u001b[90m1\u001b[39m listing_id  numeric               0          0             \u001b[4m2\u001b[24m\u001b[4m5\u001b[24m209    1       \n",
      "\u001b[90m2\u001b[39m price       character             0          0               536    0.021\u001b[4m3\u001b[24m  \n",
      "\u001b[90m3\u001b[39m nbhood_full character             0          0               217    0.008\u001b[4m6\u001b[24m\u001b[4m1\u001b[24m \n",
      "\u001b[90m4\u001b[39m description character            10          0.039\u001b[4m7\u001b[24m        \u001b[4m2\u001b[24m\u001b[4m4\u001b[24m947    0.990   \n",
      "\u001b[90m5\u001b[39m room_type   character             0          0                 9    0.000\u001b[4m3\u001b[24m\u001b[4m5\u001b[24m\u001b[4m7\u001b[24m\n",
      "\u001b[90m6\u001b[39m host_name   character             8          0.031\u001b[4m7\u001b[24m         \u001b[4m7\u001b[24m364    0.292   \n",
      "\u001b[90m7\u001b[39m last_review character             0          0               190    0.007\u001b[4m5\u001b[24m\u001b[4m4\u001b[24m \n"
     ]
    }
   ],
   "source": [
    "#Se corre la siguiente función para identificar valores faltantes y distribución entre valores únicos:\n",
    "diagnostico <- diagnose(df_final)\n",
    "print(diagnostico)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "881f6afa",
   "metadata": {
    "papermill": {
     "duration": 0.017733,
     "end_time": "2025-07-21T02:26:06.654231",
     "exception": false,
     "start_time": "2025-07-21T02:26:06.636498",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Hallazgos:\n",
    "* En columna description se identifican 10 datos faltantes.\n",
    "* En columna host_name se identifican 8 datos faltantes."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 18,
   "id": "f2fe6835",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-07-21T02:26:06.693415Z",
     "iopub.status.busy": "2025-07-21T02:26:06.691802Z",
     "iopub.status.idle": "2025-07-21T02:26:06.710241Z",
     "shell.execute_reply": "2025-07-21T02:26:06.708114Z"
    },
    "papermill": {
     "duration": 0.040616,
     "end_time": "2025-07-21T02:26:06.712661",
     "exception": false,
     "start_time": "2025-07-21T02:26:06.672045",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      " listing_id       price nbhood_full description   room_type   host_name \n",
      "          0           0           0          10           0           8 \n",
      "last_review \n",
      "          0 \n"
     ]
    }
   ],
   "source": [
    "missing_summary <- colSums(is.na(df_final))\n",
    "print(missing_summary)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 19,
   "id": "56bf12ef",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-07-21T02:26:06.752583Z",
     "iopub.status.busy": "2025-07-21T02:26:06.750991Z",
     "iopub.status.idle": "2025-07-21T02:26:06.781915Z",
     "shell.execute_reply": "2025-07-21T02:26:06.780115Z"
    },
    "papermill": {
     "duration": 0.054133,
     "end_time": "2025-07-21T02:26:06.784495",
     "exception": false,
     "start_time": "2025-07-21T02:26:06.730362",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 10 × 7</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>listing_id</th><th scope=col>price</th><th scope=col>nbhood_full</th><th scope=col>description</th><th scope=col>room_type</th><th scope=col>host_name</th><th scope=col>last_review</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>4689</th><td> 7851219</td><td>60 dollars </td><td>Brooklyn, Williamsburg   </td><td>NA</td><td>PRIVATE ROOM</td><td>John            </td><td>June 18 2019</td></tr>\n",
       "\t<tr><th scope=row>4691</th><td> 7854307</td><td>60 dollars </td><td>Brooklyn, Williamsburg   </td><td>NA</td><td>private room</td><td>John            </td><td>June 15 2019</td></tr>\n",
       "\t<tr><th scope=row>4697</th><td> 7858673</td><td>60 dollars </td><td>Brooklyn, Williamsburg   </td><td>NA</td><td>Private room</td><td>John            </td><td>June 08 2019</td></tr>\n",
       "\t<tr><th scope=row>4708</th><td> 7873655</td><td>60 dollars </td><td>Brooklyn, Williamsburg   </td><td>NA</td><td>PRIVATE ROOM</td><td>John            </td><td>June 21 2019</td></tr>\n",
       "\t<tr><th scope=row>4710</th><td> 7886635</td><td>60 dollars </td><td>Brooklyn, Williamsburg   </td><td>NA</td><td>Private room</td><td>John            </td><td>June 18 2019</td></tr>\n",
       "\t<tr><th scope=row>4718</th><td> 7901635</td><td>60 dollars </td><td>Brooklyn, Williamsburg   </td><td>NA</td><td>Private room</td><td>John            </td><td>June 23 2019</td></tr>\n",
       "\t<tr><th scope=row>4830</th><td> 8192443</td><td>60 dollars </td><td>Brooklyn, Williamsburg   </td><td>NA</td><td>private room</td><td>John            </td><td>June 23 2019</td></tr>\n",
       "\t<tr><th scope=row>4902</th><td> 8341556</td><td>55 dollars </td><td>Manhattan, Harlem        </td><td>NA</td><td>Private room</td><td>Gordon M        </td><td>May 26 2019 </td></tr>\n",
       "\t<tr><th scope=row>5497</th><td> 9698992</td><td>62 dollars </td><td>Manhattan, Harlem        </td><td>NA</td><td>private room</td><td>Gordon M        </td><td>June 14 2019</td></tr>\n",
       "\t<tr><th scope=row>11987</th><td>21733545</td><td>175 dollars</td><td>Manhattan, Hell's Kitchen</td><td>NA</td><td>Private room</td><td>Sybilla Michelle</td><td>June 30 2019</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 10 × 7\n",
       "\\begin{tabular}{r|lllllll}\n",
       "  & listing\\_id & price & nbhood\\_full & description & room\\_type & host\\_name & last\\_review\\\\\n",
       "  & <dbl> & <chr> & <chr> & <chr> & <chr> & <chr> & <chr>\\\\\n",
       "\\hline\n",
       "\t4689 &  7851219 & 60 dollars  & Brooklyn, Williamsburg    & NA & PRIVATE ROOM & John             & June 18 2019\\\\\n",
       "\t4691 &  7854307 & 60 dollars  & Brooklyn, Williamsburg    & NA & private room & John             & June 15 2019\\\\\n",
       "\t4697 &  7858673 & 60 dollars  & Brooklyn, Williamsburg    & NA & Private room & John             & June 08 2019\\\\\n",
       "\t4708 &  7873655 & 60 dollars  & Brooklyn, Williamsburg    & NA & PRIVATE ROOM & John             & June 21 2019\\\\\n",
       "\t4710 &  7886635 & 60 dollars  & Brooklyn, Williamsburg    & NA & Private room & John             & June 18 2019\\\\\n",
       "\t4718 &  7901635 & 60 dollars  & Brooklyn, Williamsburg    & NA & Private room & John             & June 23 2019\\\\\n",
       "\t4830 &  8192443 & 60 dollars  & Brooklyn, Williamsburg    & NA & private room & John             & June 23 2019\\\\\n",
       "\t4902 &  8341556 & 55 dollars  & Manhattan, Harlem         & NA & Private room & Gordon M         & May 26 2019 \\\\\n",
       "\t5497 &  9698992 & 62 dollars  & Manhattan, Harlem         & NA & private room & Gordon M         & June 14 2019\\\\\n",
       "\t11987 & 21733545 & 175 dollars & Manhattan, Hell's Kitchen & NA & Private room & Sybilla Michelle & June 30 2019\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 10 × 7\n",
       "\n",
       "| <!--/--> | listing_id &lt;dbl&gt; | price &lt;chr&gt; | nbhood_full &lt;chr&gt; | description &lt;chr&gt; | room_type &lt;chr&gt; | host_name &lt;chr&gt; | last_review &lt;chr&gt; |\n",
       "|---|---|---|---|---|---|---|---|\n",
       "| 4689 |  7851219 | 60 dollars  | Brooklyn, Williamsburg    | NA | PRIVATE ROOM | John             | June 18 2019 |\n",
       "| 4691 |  7854307 | 60 dollars  | Brooklyn, Williamsburg    | NA | private room | John             | June 15 2019 |\n",
       "| 4697 |  7858673 | 60 dollars  | Brooklyn, Williamsburg    | NA | Private room | John             | June 08 2019 |\n",
       "| 4708 |  7873655 | 60 dollars  | Brooklyn, Williamsburg    | NA | PRIVATE ROOM | John             | June 21 2019 |\n",
       "| 4710 |  7886635 | 60 dollars  | Brooklyn, Williamsburg    | NA | Private room | John             | June 18 2019 |\n",
       "| 4718 |  7901635 | 60 dollars  | Brooklyn, Williamsburg    | NA | Private room | John             | June 23 2019 |\n",
       "| 4830 |  8192443 | 60 dollars  | Brooklyn, Williamsburg    | NA | private room | John             | June 23 2019 |\n",
       "| 4902 |  8341556 | 55 dollars  | Manhattan, Harlem         | NA | Private room | Gordon M         | May 26 2019  |\n",
       "| 5497 |  9698992 | 62 dollars  | Manhattan, Harlem         | NA | private room | Gordon M         | June 14 2019 |\n",
       "| 11987 | 21733545 | 175 dollars | Manhattan, Hell's Kitchen | NA | Private room | Sybilla Michelle | June 30 2019 |\n",
       "\n"
      ],
      "text/plain": [
       "      listing_id price       nbhood_full               description room_type   \n",
       "4689   7851219   60 dollars  Brooklyn, Williamsburg    NA          PRIVATE ROOM\n",
       "4691   7854307   60 dollars  Brooklyn, Williamsburg    NA          private room\n",
       "4697   7858673   60 dollars  Brooklyn, Williamsburg    NA          Private room\n",
       "4708   7873655   60 dollars  Brooklyn, Williamsburg    NA          PRIVATE ROOM\n",
       "4710   7886635   60 dollars  Brooklyn, Williamsburg    NA          Private room\n",
       "4718   7901635   60 dollars  Brooklyn, Williamsburg    NA          Private room\n",
       "4830   8192443   60 dollars  Brooklyn, Williamsburg    NA          private room\n",
       "4902   8341556   55 dollars  Manhattan, Harlem         NA          Private room\n",
       "5497   9698992   62 dollars  Manhattan, Harlem         NA          private room\n",
       "11987 21733545   175 dollars Manhattan, Hell's Kitchen NA          Private room\n",
       "      host_name        last_review \n",
       "4689  John             June 18 2019\n",
       "4691  John             June 15 2019\n",
       "4697  John             June 08 2019\n",
       "4708  John             June 21 2019\n",
       "4710  John             June 18 2019\n",
       "4718  John             June 23 2019\n",
       "4830  John             June 23 2019\n",
       "4902  Gordon M         May 26 2019 \n",
       "5497  Gordon M         June 14 2019\n",
       "11987 Sybilla Michelle June 30 2019"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "df_final[is.na(df_final$description), ]"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 20,
   "id": "a78b529b",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-07-21T02:26:06.826684Z",
     "iopub.status.busy": "2025-07-21T02:26:06.825078Z",
     "iopub.status.idle": "2025-07-21T02:26:06.854520Z",
     "shell.execute_reply": "2025-07-21T02:26:06.852660Z"
    },
    "papermill": {
     "duration": 0.052998,
     "end_time": "2025-07-21T02:26:06.857210",
     "exception": false,
     "start_time": "2025-07-21T02:26:06.804212",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 8 × 7</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>listing_id</th><th scope=col>price</th><th scope=col>nbhood_full</th><th scope=col>description</th><th scope=col>room_type</th><th scope=col>host_name</th><th scope=col>last_review</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>264</th><td>  100184</td><td>50 dollars </td><td>Queens, Queens Village   </td><td>Bienvenue                                         </td><td>private room   </td><td>NA</td><td>July 08 2019   </td></tr>\n",
       "\t<tr><th scope=row>3041</th><td> 4183989</td><td>86 dollars </td><td>Manhattan, Harlem        </td><td>SPRING in the City!! Zen-Style Tranquil Bedroom   </td><td>Private room   </td><td>NA</td><td>May 23 2019    </td></tr>\n",
       "\t<tr><th scope=row>4040</th><td> 6292866</td><td>85 dollars </td><td>Brooklyn, East Flatbush  </td><td>Modern Quiet Gem Near All                         </td><td>entire home/apt</td><td>NA</td><td>June 19 2019   </td></tr>\n",
       "\t<tr><th scope=row>4270</th><td> 6786181</td><td>100 dollars</td><td><span style=white-space:pre-wrap>Brooklyn, East Flatbush  </span></td><td><span style=white-space:pre-wrap>R&amp;S Modern Spacious Hideaway                      </span></td><td>Entire home/apt</td><td>NA</td><td><span style=white-space:pre-wrap>June 19 2019   </span></td></tr>\n",
       "\t<tr><th scope=row>6339</th><td>12113879</td><td>220 dollars</td><td>Manhattan, Chelsea       </td><td>Sunny, Large West Village 1 BR Near Everything    </td><td>Entire home/apt</td><td>NA</td><td>July 02 2019   </td></tr>\n",
       "\t<tr><th scope=row>8061</th><td>15648096</td><td>75 dollars </td><td>Bronx, Highbridge        </td><td>Spacious 2 bedroom close to Manhattan             </td><td>Entire home/apt</td><td>NA</td><td>July 07 2019   </td></tr>\n",
       "\t<tr><th scope=row>12129</th><td>21867710</td><td>120 dollars</td><td>Manhattan, Hell's Kitchen</td><td>Amazing room in the centre on Manhatten! Welcome! </td><td>Private room   </td><td>NA</td><td>January 01 2019</td></tr>\n",
       "\t<tr><th scope=row>12165</th><td>21901156</td><td>120 dollars</td><td>Manhattan, Hell's Kitchen</td><td>Best Deal! Lovely place in Manhattan! Time Square!</td><td>Private room   </td><td>NA</td><td>January 01 2019</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 8 × 7\n",
       "\\begin{tabular}{r|lllllll}\n",
       "  & listing\\_id & price & nbhood\\_full & description & room\\_type & host\\_name & last\\_review\\\\\n",
       "  & <dbl> & <chr> & <chr> & <chr> & <chr> & <chr> & <chr>\\\\\n",
       "\\hline\n",
       "\t264 &   100184 & 50 dollars  & Queens, Queens Village    & Bienvenue                                          & private room    & NA & July 08 2019   \\\\\n",
       "\t3041 &  4183989 & 86 dollars  & Manhattan, Harlem         & SPRING in the City!! Zen-Style Tranquil Bedroom    & Private room    & NA & May 23 2019    \\\\\n",
       "\t4040 &  6292866 & 85 dollars  & Brooklyn, East Flatbush   & Modern Quiet Gem Near All                          & entire home/apt & NA & June 19 2019   \\\\\n",
       "\t4270 &  6786181 & 100 dollars & Brooklyn, East Flatbush   & R\\&S Modern Spacious Hideaway                       & Entire home/apt & NA & June 19 2019   \\\\\n",
       "\t6339 & 12113879 & 220 dollars & Manhattan, Chelsea        & Sunny, Large West Village 1 BR Near Everything     & Entire home/apt & NA & July 02 2019   \\\\\n",
       "\t8061 & 15648096 & 75 dollars  & Bronx, Highbridge         & Spacious 2 bedroom close to Manhattan              & Entire home/apt & NA & July 07 2019   \\\\\n",
       "\t12129 & 21867710 & 120 dollars & Manhattan, Hell's Kitchen & Amazing room in the centre on Manhatten! Welcome!  & Private room    & NA & January 01 2019\\\\\n",
       "\t12165 & 21901156 & 120 dollars & Manhattan, Hell's Kitchen & Best Deal! Lovely place in Manhattan! Time Square! & Private room    & NA & January 01 2019\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 8 × 7\n",
       "\n",
       "| <!--/--> | listing_id &lt;dbl&gt; | price &lt;chr&gt; | nbhood_full &lt;chr&gt; | description &lt;chr&gt; | room_type &lt;chr&gt; | host_name &lt;chr&gt; | last_review &lt;chr&gt; |\n",
       "|---|---|---|---|---|---|---|---|\n",
       "| 264 |   100184 | 50 dollars  | Queens, Queens Village    | Bienvenue                                          | private room    | NA | July 08 2019    |\n",
       "| 3041 |  4183989 | 86 dollars  | Manhattan, Harlem         | SPRING in the City!! Zen-Style Tranquil Bedroom    | Private room    | NA | May 23 2019     |\n",
       "| 4040 |  6292866 | 85 dollars  | Brooklyn, East Flatbush   | Modern Quiet Gem Near All                          | entire home/apt | NA | June 19 2019    |\n",
       "| 4270 |  6786181 | 100 dollars | Brooklyn, East Flatbush   | R&amp;S Modern Spacious Hideaway                       | Entire home/apt | NA | June 19 2019    |\n",
       "| 6339 | 12113879 | 220 dollars | Manhattan, Chelsea        | Sunny, Large West Village 1 BR Near Everything     | Entire home/apt | NA | July 02 2019    |\n",
       "| 8061 | 15648096 | 75 dollars  | Bronx, Highbridge         | Spacious 2 bedroom close to Manhattan              | Entire home/apt | NA | July 07 2019    |\n",
       "| 12129 | 21867710 | 120 dollars | Manhattan, Hell's Kitchen | Amazing room in the centre on Manhatten! Welcome!  | Private room    | NA | January 01 2019 |\n",
       "| 12165 | 21901156 | 120 dollars | Manhattan, Hell's Kitchen | Best Deal! Lovely place in Manhattan! Time Square! | Private room    | NA | January 01 2019 |\n",
       "\n"
      ],
      "text/plain": [
       "      listing_id price       nbhood_full              \n",
       "264     100184   50 dollars  Queens, Queens Village   \n",
       "3041   4183989   86 dollars  Manhattan, Harlem        \n",
       "4040   6292866   85 dollars  Brooklyn, East Flatbush  \n",
       "4270   6786181   100 dollars Brooklyn, East Flatbush  \n",
       "6339  12113879   220 dollars Manhattan, Chelsea       \n",
       "8061  15648096   75 dollars  Bronx, Highbridge        \n",
       "12129 21867710   120 dollars Manhattan, Hell's Kitchen\n",
       "12165 21901156   120 dollars Manhattan, Hell's Kitchen\n",
       "      description                                        room_type      \n",
       "264   Bienvenue                                          private room   \n",
       "3041  SPRING in the City!! Zen-Style Tranquil Bedroom    Private room   \n",
       "4040  Modern Quiet Gem Near All                          entire home/apt\n",
       "4270  R&S Modern Spacious Hideaway                       Entire home/apt\n",
       "6339  Sunny, Large West Village 1 BR Near Everything     Entire home/apt\n",
       "8061  Spacious 2 bedroom close to Manhattan              Entire home/apt\n",
       "12129 Amazing room in the centre on Manhatten! Welcome!  Private room   \n",
       "12165 Best Deal! Lovely place in Manhattan! Time Square! Private room   \n",
       "      host_name last_review    \n",
       "264   NA        July 08 2019   \n",
       "3041  NA        May 23 2019    \n",
       "4040  NA        June 19 2019   \n",
       "4270  NA        June 19 2019   \n",
       "6339  NA        July 02 2019   \n",
       "8061  NA        July 07 2019   \n",
       "12129 NA        January 01 2019\n",
       "12165 NA        January 01 2019"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "df_final[is.na(df_final$host_name), ]"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 21,
   "id": "2d3b2621",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-07-21T02:26:06.898714Z",
     "iopub.status.busy": "2025-07-21T02:26:06.897145Z",
     "iopub.status.idle": "2025-07-21T02:26:06.911724Z",
     "shell.execute_reply": "2025-07-21T02:26:06.909907Z"
    },
    "papermill": {
     "duration": 0.050275,
     "end_time": "2025-07-21T02:26:06.926330",
     "exception": false,
     "start_time": "2025-07-21T02:26:06.876055",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "#Columna description: Se reemplazan los datos NA por desconocido\n",
    "df_final$description[is.na(df_final$description)] <- \"desconocido\" "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 22,
   "id": "6dae9586",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-07-21T02:26:06.967633Z",
     "iopub.status.busy": "2025-07-21T02:26:06.966027Z",
     "iopub.status.idle": "2025-07-21T02:26:06.980513Z",
     "shell.execute_reply": "2025-07-21T02:26:06.978760Z"
    },
    "papermill": {
     "duration": 0.03813,
     "end_time": "2025-07-21T02:26:06.983013",
     "exception": false,
     "start_time": "2025-07-21T02:26:06.944883",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "#Columna host_name: Se reemplazan los datos NA por desconocido\n",
    "df_final$host_name[is.na(df_final$host_name)] <- \"desconocido\" "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 23,
   "id": "8fbc0bc5",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-07-21T02:26:07.026360Z",
     "iopub.status.busy": "2025-07-21T02:26:07.024699Z",
     "iopub.status.idle": "2025-07-21T02:26:07.078188Z",
     "shell.execute_reply": "2025-07-21T02:26:07.076016Z"
    },
    "papermill": {
     "duration": 0.077181,
     "end_time": "2025-07-21T02:26:07.080801",
     "exception": false,
     "start_time": "2025-07-21T02:26:07.003620",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "\u001b[90m# A tibble: 7 × 6\u001b[39m\n",
      "  variables   types     missing_count missing_percent unique_count unique_rate\n",
      "  \u001b[3m\u001b[90m<chr>\u001b[39m\u001b[23m       \u001b[3m\u001b[90m<chr>\u001b[39m\u001b[23m             \u001b[3m\u001b[90m<int>\u001b[39m\u001b[23m           \u001b[3m\u001b[90m<dbl>\u001b[39m\u001b[23m        \u001b[3m\u001b[90m<int>\u001b[39m\u001b[23m       \u001b[3m\u001b[90m<dbl>\u001b[39m\u001b[23m\n",
      "\u001b[90m1\u001b[39m listing_id  numeric               0               0        \u001b[4m2\u001b[24m\u001b[4m5\u001b[24m209    1       \n",
      "\u001b[90m2\u001b[39m price       character             0               0          536    0.021\u001b[4m3\u001b[24m  \n",
      "\u001b[90m3\u001b[39m nbhood_full character             0               0          217    0.008\u001b[4m6\u001b[24m\u001b[4m1\u001b[24m \n",
      "\u001b[90m4\u001b[39m description character             0               0        \u001b[4m2\u001b[24m\u001b[4m4\u001b[24m947    0.990   \n",
      "\u001b[90m5\u001b[39m room_type   character             0               0            9    0.000\u001b[4m3\u001b[24m\u001b[4m5\u001b[24m\u001b[4m7\u001b[24m\n",
      "\u001b[90m6\u001b[39m host_name   character             0               0         \u001b[4m7\u001b[24m364    0.292   \n",
      "\u001b[90m7\u001b[39m last_review character             0               0          190    0.007\u001b[4m5\u001b[24m\u001b[4m4\u001b[24m \n"
     ]
    }
   ],
   "source": [
    "#Se corre nuevamente la función diagnose para identificar valores faltantes.\n",
    "diagnostico <- diagnose(df_final)\n",
    "print(diagnostico)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "609753af",
   "metadata": {
    "papermill": {
     "duration": 0.019431,
     "end_time": "2025-07-21T02:26:07.119313",
     "exception": false,
     "start_time": "2025-07-21T02:26:07.099882",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Se verifica que no hay valores NA"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 24,
   "id": "d0f3a67b",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-07-21T02:26:07.160682Z",
     "iopub.status.busy": "2025-07-21T02:26:07.159078Z",
     "iopub.status.idle": "2025-07-21T02:26:07.307255Z",
     "shell.execute_reply": "2025-07-21T02:26:07.305357Z"
    },
    "papermill": {
     "duration": 0.171517,
     "end_time": "2025-07-21T02:26:07.309762",
     "exception": false,
     "start_time": "2025-07-21T02:26:07.138245",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "#Se cambia el tipo de dato del campo last_review de character a date\n",
    "df_final$last_review <- as.Date(df_final$last_review, format = \"%b %d %Y\")\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 25,
   "id": "f9413ea6",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-07-21T02:26:07.351131Z",
     "iopub.status.busy": "2025-07-21T02:26:07.349488Z",
     "iopub.status.idle": "2025-07-21T02:26:07.387053Z",
     "shell.execute_reply": "2025-07-21T02:26:07.385176Z"
    },
    "papermill": {
     "duration": 0.061365,
     "end_time": "2025-07-21T02:26:07.389815",
     "exception": false,
     "start_time": "2025-07-21T02:26:07.328450",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "#Se cambia el tipo de dato del campo last_review de character a date\n",
    "df_final <- df_final %>% mutate(clean_price = str_remove(price, \" dollars\") %>%   as.numeric())"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 26,
   "id": "a608a03e",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-07-21T02:26:07.432308Z",
     "iopub.status.busy": "2025-07-21T02:26:07.430747Z",
     "iopub.status.idle": "2025-07-21T02:26:07.459054Z",
     "shell.execute_reply": "2025-07-21T02:26:07.457200Z"
    },
    "papermill": {
     "duration": 0.052442,
     "end_time": "2025-07-21T02:26:07.461453",
     "exception": false,
     "start_time": "2025-07-21T02:26:07.409011",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 6 × 8</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>listing_id</th><th scope=col>price</th><th scope=col>nbhood_full</th><th scope=col>description</th><th scope=col>room_type</th><th scope=col>host_name</th><th scope=col>last_review</th><th scope=col>clean_price</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;date&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>1</th><td>2595</td><td>225 dollars</td><td>Manhattan, Midtown        </td><td>Skylit Midtown Castle                    </td><td>Entire home/apt</td><td>Jennifer   </td><td>2019-05-21</td><td>225</td></tr>\n",
       "\t<tr><th scope=row>2</th><td>3831</td><td>89 dollars </td><td>Brooklyn, Clinton Hill    </td><td>Cozy Entire Floor of Brownstone          </td><td>Entire home/apt</td><td>LisaRoxanne</td><td>2019-07-05</td><td> 89</td></tr>\n",
       "\t<tr><th scope=row>3</th><td>5099</td><td>200 dollars</td><td>Manhattan, Murray Hill    </td><td>Large Cozy 1 BR Apartment In Midtown East</td><td>Entire home/apt</td><td>Chris      </td><td>2019-06-22</td><td>200</td></tr>\n",
       "\t<tr><th scope=row>4</th><td>5178</td><td>79 dollars </td><td>Manhattan, Hell's Kitchen </td><td>Large Furnished Room Near B'way          </td><td>private room   </td><td>Shunichi   </td><td>2019-06-24</td><td> 79</td></tr>\n",
       "\t<tr><th scope=row>5</th><td>5238</td><td>150 dollars</td><td><span style=white-space:pre-wrap>Manhattan, Chinatown      </span></td><td><span style=white-space:pre-wrap>Cute &amp; Cozy Lower East Side 1 bdrm       </span></td><td>Entire home/apt</td><td><span style=white-space:pre-wrap>Ben        </span></td><td>2019-06-09</td><td>150</td></tr>\n",
       "\t<tr><th scope=row>6</th><td>5295</td><td>135 dollars</td><td>Manhattan, Upper West Side</td><td>Beautiful 1br on Upper West Side         </td><td>Entire home/apt</td><td>Lena       </td><td>2019-06-22</td><td>135</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 6 × 8\n",
       "\\begin{tabular}{r|llllllll}\n",
       "  & listing\\_id & price & nbhood\\_full & description & room\\_type & host\\_name & last\\_review & clean\\_price\\\\\n",
       "  & <dbl> & <chr> & <chr> & <chr> & <chr> & <chr> & <date> & <dbl>\\\\\n",
       "\\hline\n",
       "\t1 & 2595 & 225 dollars & Manhattan, Midtown         & Skylit Midtown Castle                     & Entire home/apt & Jennifer    & 2019-05-21 & 225\\\\\n",
       "\t2 & 3831 & 89 dollars  & Brooklyn, Clinton Hill     & Cozy Entire Floor of Brownstone           & Entire home/apt & LisaRoxanne & 2019-07-05 &  89\\\\\n",
       "\t3 & 5099 & 200 dollars & Manhattan, Murray Hill     & Large Cozy 1 BR Apartment In Midtown East & Entire home/apt & Chris       & 2019-06-22 & 200\\\\\n",
       "\t4 & 5178 & 79 dollars  & Manhattan, Hell's Kitchen  & Large Furnished Room Near B'way           & private room    & Shunichi    & 2019-06-24 &  79\\\\\n",
       "\t5 & 5238 & 150 dollars & Manhattan, Chinatown       & Cute \\& Cozy Lower East Side 1 bdrm        & Entire home/apt & Ben         & 2019-06-09 & 150\\\\\n",
       "\t6 & 5295 & 135 dollars & Manhattan, Upper West Side & Beautiful 1br on Upper West Side          & Entire home/apt & Lena        & 2019-06-22 & 135\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 6 × 8\n",
       "\n",
       "| <!--/--> | listing_id &lt;dbl&gt; | price &lt;chr&gt; | nbhood_full &lt;chr&gt; | description &lt;chr&gt; | room_type &lt;chr&gt; | host_name &lt;chr&gt; | last_review &lt;date&gt; | clean_price &lt;dbl&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|\n",
       "| 1 | 2595 | 225 dollars | Manhattan, Midtown         | Skylit Midtown Castle                     | Entire home/apt | Jennifer    | 2019-05-21 | 225 |\n",
       "| 2 | 3831 | 89 dollars  | Brooklyn, Clinton Hill     | Cozy Entire Floor of Brownstone           | Entire home/apt | LisaRoxanne | 2019-07-05 |  89 |\n",
       "| 3 | 5099 | 200 dollars | Manhattan, Murray Hill     | Large Cozy 1 BR Apartment In Midtown East | Entire home/apt | Chris       | 2019-06-22 | 200 |\n",
       "| 4 | 5178 | 79 dollars  | Manhattan, Hell's Kitchen  | Large Furnished Room Near B'way           | private room    | Shunichi    | 2019-06-24 |  79 |\n",
       "| 5 | 5238 | 150 dollars | Manhattan, Chinatown       | Cute &amp; Cozy Lower East Side 1 bdrm        | Entire home/apt | Ben         | 2019-06-09 | 150 |\n",
       "| 6 | 5295 | 135 dollars | Manhattan, Upper West Side | Beautiful 1br on Upper West Side          | Entire home/apt | Lena        | 2019-06-22 | 135 |\n",
       "\n"
      ],
      "text/plain": [
       "  listing_id price       nbhood_full               \n",
       "1 2595       225 dollars Manhattan, Midtown        \n",
       "2 3831       89 dollars  Brooklyn, Clinton Hill    \n",
       "3 5099       200 dollars Manhattan, Murray Hill    \n",
       "4 5178       79 dollars  Manhattan, Hell's Kitchen \n",
       "5 5238       150 dollars Manhattan, Chinatown      \n",
       "6 5295       135 dollars Manhattan, Upper West Side\n",
       "  description                               room_type       host_name  \n",
       "1 Skylit Midtown Castle                     Entire home/apt Jennifer   \n",
       "2 Cozy Entire Floor of Brownstone           Entire home/apt LisaRoxanne\n",
       "3 Large Cozy 1 BR Apartment In Midtown East Entire home/apt Chris      \n",
       "4 Large Furnished Room Near B'way           private room    Shunichi   \n",
       "5 Cute & Cozy Lower East Side 1 bdrm        Entire home/apt Ben        \n",
       "6 Beautiful 1br on Upper West Side          Entire home/apt Lena       \n",
       "  last_review clean_price\n",
       "1 2019-05-21  225        \n",
       "2 2019-07-05   89        \n",
       "3 2019-06-22  200        \n",
       "4 2019-06-24   79        \n",
       "5 2019-06-09  150        \n",
       "6 2019-06-22  135        "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "head(df_final)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 27,
   "id": "b85f1011",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-07-21T02:26:07.503569Z",
     "iopub.status.busy": "2025-07-21T02:26:07.502034Z",
     "iopub.status.idle": "2025-07-21T02:26:07.514227Z",
     "shell.execute_reply": "2025-07-21T02:26:07.512530Z"
    },
    "id": "7Ppt4z0dS4jn",
    "papermill": {
     "duration": 0.036086,
     "end_time": "2025-07-21T02:26:07.516747",
     "exception": false,
     "start_time": "2025-07-21T02:26:07.480661",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "# ACA\n",
    "\n",
    "\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "9933f88a",
   "metadata": {
    "id": "bEZKZzFSReDw",
    "papermill": {
     "duration": 0.019686,
     "end_time": "2025-07-21T02:26:07.555597",
     "exception": false,
     "start_time": "2025-07-21T02:26:07.535911",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "\n",
    "## Actividad 3:  Preguntas de análisis, usa R y las librerias necesarias para contestar las siguientes preguntas.\n",
    "\n",
    "- ¿Cuáles son las fechas de la reseña más antigua y la más reciente?\n",
    "- ¿Cuántos de los listados son habitaciones privadas?\n",
    "- ¿Cuál es el precio promedio de todos los listados (redondeado al centavo más cercano)?\n",
    "- Combina estos cuatro valores en un tibble llamado `review_dates` con cuatro columnas: `first_reviewed`, `last_reviewed`, `nb_private_rooms` y `avg_price`.  \n",
    "El tibble debe contener solo una fila con los valores.\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "ebbaab7b",
   "metadata": {
    "papermill": {
     "duration": 0.019145,
     "end_time": "2025-07-21T02:26:07.594391",
     "exception": false,
     "start_time": "2025-07-21T02:26:07.575246",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": []
  },
  {
   "cell_type": "code",
   "execution_count": 28,
   "id": "e14840e7",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-07-21T02:26:07.636591Z",
     "iopub.status.busy": "2025-07-21T02:26:07.634999Z",
     "iopub.status.idle": "2025-07-21T02:26:07.660934Z",
     "shell.execute_reply": "2025-07-21T02:26:07.659118Z"
    },
    "id": "9ZM5jFFfQtTH",
    "papermill": {
     "duration": 0.05008,
     "end_time": "2025-07-21T02:26:07.663670",
     "exception": false,
     "start_time": "2025-07-21T02:26:07.613590",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "first_reviewed <- min(df_final$last_review )\n",
    "last_reviewed <- max(df_final$last_review )\n",
    "nb_private_rooms <- count(df_final %>% filter(room_type == \"private room\"))\n",
    "avg_price <- df_final %>% summarize(avg_price = round(mean(clean_price),2))   "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 29,
   "id": "ed871c37",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-07-21T02:26:07.707385Z",
     "iopub.status.busy": "2025-07-21T02:26:07.705693Z",
     "iopub.status.idle": "2025-07-21T02:26:09.242829Z",
     "shell.execute_reply": "2025-07-21T02:26:09.241014Z"
    },
    "papermill": {
     "duration": 1.562328,
     "end_time": "2025-07-21T02:26:09.245428",
     "exception": false,
     "start_time": "2025-07-21T02:26:07.683100",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "  first_reviewed last_reviewed nb_private_rooms$n avg_price$avg_price\n",
       "1 2019-01-01     2019-07-09    2248               141.78             "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "review_dates <- tibble(\n",
    "  first_reviewed = first_reviewed,\n",
    "  last_reviewed = last_reviewed,\n",
    "  nb_private_rooms = nb_private_rooms,\n",
    "   avg_price = avg_price \n",
    ")\n",
    "review_dates"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "8748a84f",
   "metadata": {
    "id": "vJvnrHFCXdbj",
    "papermill": {
     "duration": 0.020685,
     "end_time": "2025-07-21T02:26:09.285986",
     "exception": false,
     "start_time": "2025-07-21T02:26:09.265301",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "#DESAFIO2: Toronto, Ontario 🌆. La Ciudad Reina. The 6ix.\n",
    "\n",
    "Conocida por su vibrante escena artística, su diversidad cultural, su impresionante horizonte urbano y sus vecindarios llenos de vida, Toronto es una ciudad que nunca duerme. Sin embargo, como en cualquier gran centro urbano, enfrenta sus propios desafíos. Una preocupación creciente para los habitantes de Toronto es el aumento en el número de robos de bicicletas.\n",
    "\n",
    "Has sido invitado a colaborar con el Servicio de Policía de Toronto para analizar y visualizar datos con el fin de descubrir patrones en la actividad de robos. Tus hallazgos e ideas visuales proporcionarán información crucial que podrá ayudar a asignar recursos de manera más efectiva y desarrollar estrategias para combatir los robos de bicicletas, garantizando una ciudad más segura para todos los ciclistas.\n",
    "\n",
    "---\n",
    "\n",
    "## Los Datos\n",
    "\n",
    "El conjunto de datos utilizado para analizar los robos de bicicletas se titula `Cleaned_Bicycle_Thefts_Open_Data.csv` y está ubicado en la carpeta `data`. Este conjunto de datos contiene información esencial sobre incidentes de robo de bicicletas en una ciudad determinada. A continuación se describen los detalles de cada columna:\n",
    "\n",
    "| **Columna**       | **Descripción**                                                                 |\n",
    "|-------------------|---------------------------------------------------------------------------------|\n",
    "| `date`           | La fecha en que ocurrió el robo de la bicicleta, en formato AAAA/MM/DD.          |\n",
    "| `quarter`        | El trimestre del año en que ocurrió el robo (equivale a tres meses).             |\n",
    "| `day_of_week`    | El día de la semana en que ocurrió el robo (por ejemplo, lunes, martes).        |\n",
    "| `neighborhood`   | El vecindario donde ocurrió el robo, basado en los 140 vecindarios planificados socialmente en la ciudad. |\n",
    "| `bike_cost`      | El costo reportado de la bicicleta robada, especificado en la moneda local.     |\n",
    "| `location`       | El tipo específico de ubicación del robo, como estructuras residenciales, áreas comerciales, espacios públicos, etc. |\n",
    "| `long`           | La longitud del centro del vecindario.                                         |\n",
    "| `lat`            | La latitud del centro del vecindario.                                          |\n",
    "\n",
    "Este conjunto de datos ofrece una visión integral de los robos de bicicletas, incluyendo cuándo y dónde ocurren, el impacto financiero y otros factores espaciales y temporales. Al analizar estos datos, puedes obtener valiosos conocimientos sobre patrones y tendencias que informen estrategias para mitigar los robos de bicicletas y mejorar la planificación urbana.\n",
    "\n",
    "---"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 30,
   "id": "cf93776e",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-07-21T02:26:09.335653Z",
     "iopub.status.busy": "2025-07-21T02:26:09.333970Z",
     "iopub.status.idle": "2025-07-21T02:26:09.685856Z",
     "shell.execute_reply": "2025-07-21T02:26:09.683542Z"
    },
    "id": "CoKxj3U5R9u_",
    "papermill": {
     "duration": 0.378219,
     "end_time": "2025-07-21T02:26:09.688452",
     "exception": false,
     "start_time": "2025-07-21T02:26:09.310233",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "── \u001b[1mAttaching core tidyverse packages\u001b[22m ──────────────────────── tidyverse 2.0.0 ──\n",
      "\u001b[32m✔\u001b[39m \u001b[34mforcats\u001b[39m 1.0.0     \u001b[32m✔\u001b[39m \u001b[34mtibble \u001b[39m 3.2.1\n",
      "\u001b[32m✔\u001b[39m \u001b[34mpurrr  \u001b[39m 1.0.2     \u001b[32m✔\u001b[39m \u001b[34mtidyr  \u001b[39m 1.3.1\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "── \u001b[1mConflicts\u001b[22m ────────────────────────────────────────── tidyverse_conflicts() ──\n",
      "\u001b[31m✖\u001b[39m \u001b[34mtidyr\u001b[39m::\u001b[32mextract()\u001b[39m         masks \u001b[34mdlookr\u001b[39m::extract()\n",
      "\u001b[31m✖\u001b[39m \u001b[34mdplyr\u001b[39m::\u001b[32mfilter()\u001b[39m          masks \u001b[34mstats\u001b[39m::filter()\n",
      "\u001b[31m✖\u001b[39m \u001b[34mkableExtra\u001b[39m::\u001b[32mgroup_rows()\u001b[39m masks \u001b[34mdplyr\u001b[39m::group_rows()\n",
      "\u001b[31m✖\u001b[39m \u001b[34mdplyr\u001b[39m::\u001b[32mlag()\u001b[39m             masks \u001b[34mstats\u001b[39m::lag()\n",
      "\u001b[36mℹ\u001b[39m Use the conflicted package (\u001b[3m\u001b[34m<http://conflicted.r-lib.org/>\u001b[39m\u001b[23m) to force all conflicts to become errors\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\u001b[1mRows: \u001b[22m\u001b[34m31833\u001b[39m \u001b[1mColumns: \u001b[22m\u001b[34m8\u001b[39m\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\u001b[36m──\u001b[39m \u001b[1mColumn specification\u001b[22m \u001b[36m────────────────────────────────────────────────────────\u001b[39m\n",
      "\u001b[1mDelimiter:\u001b[22m \",\"\n",
      "\u001b[31mchr\u001b[39m  (3): day_of_week, neighborhood, location\n",
      "\u001b[32mdbl\u001b[39m  (3): bike_cost, long, lat\n",
      "\u001b[34mdate\u001b[39m (2): date, quarter\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\n",
      "\u001b[36mℹ\u001b[39m Use `spec()` to retrieve the full column specification for this data.\n",
      "\u001b[36mℹ\u001b[39m Specify the column types or set `show_col_types = FALSE` to quiet this message.\n"
     ]
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 6 × 8</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>date</th><th scope=col>quarter</th><th scope=col>day_of_week</th><th scope=col>neighborhood</th><th scope=col>bike_cost</th><th scope=col>location</th><th scope=col>long</th><th scope=col>lat</th></tr>\n",
       "\t<tr><th scope=col>&lt;date&gt;</th><th scope=col>&lt;date&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>2014-01-01</td><td>2014-01-01</td><td>Wednesday</td><td>Waterfront Communities-The Island (77)</td><td>1019</td><td>Residential Structures</td><td>-79.37720</td><td>43.63388</td></tr>\n",
       "\t<tr><td>2014-01-03</td><td>2014-01-01</td><td>Friday   </td><td>Humewood-Cedarvale (106)              </td><td> 560</td><td>Residential Structures</td><td>-79.42768</td><td>43.69137</td></tr>\n",
       "\t<tr><td>2014-01-04</td><td>2014-01-01</td><td>Saturday </td><td>Church-Yonge Corridor (75)            </td><td> 200</td><td>Residential Structures</td><td>-79.37902</td><td>43.65965</td></tr>\n",
       "\t<tr><td>2014-01-04</td><td>2014-01-01</td><td>Saturday </td><td>Leaside-Bennington (56)               </td><td> 900</td><td>Residential Structures</td><td>-79.36607</td><td>43.70380</td></tr>\n",
       "\t<tr><td>2014-01-07</td><td>2014-01-01</td><td>Tuesday  </td><td>South Riverdale (70)                  </td><td> 150</td><td>Residential Structures</td><td>-79.33565</td><td>43.64929</td></tr>\n",
       "\t<tr><td>2014-01-08</td><td>2014-01-01</td><td>Wednesday</td><td>Moss Park (73)                        </td><td> 479</td><td>Residential Structures</td><td>-79.36730</td><td>43.65652</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 6 × 8\n",
       "\\begin{tabular}{llllllll}\n",
       " date & quarter & day\\_of\\_week & neighborhood & bike\\_cost & location & long & lat\\\\\n",
       " <date> & <date> & <chr> & <chr> & <dbl> & <chr> & <dbl> & <dbl>\\\\\n",
       "\\hline\n",
       "\t 2014-01-01 & 2014-01-01 & Wednesday & Waterfront Communities-The Island (77) & 1019 & Residential Structures & -79.37720 & 43.63388\\\\\n",
       "\t 2014-01-03 & 2014-01-01 & Friday    & Humewood-Cedarvale (106)               &  560 & Residential Structures & -79.42768 & 43.69137\\\\\n",
       "\t 2014-01-04 & 2014-01-01 & Saturday  & Church-Yonge Corridor (75)             &  200 & Residential Structures & -79.37902 & 43.65965\\\\\n",
       "\t 2014-01-04 & 2014-01-01 & Saturday  & Leaside-Bennington (56)                &  900 & Residential Structures & -79.36607 & 43.70380\\\\\n",
       "\t 2014-01-07 & 2014-01-01 & Tuesday   & South Riverdale (70)                   &  150 & Residential Structures & -79.33565 & 43.64929\\\\\n",
       "\t 2014-01-08 & 2014-01-01 & Wednesday & Moss Park (73)                         &  479 & Residential Structures & -79.36730 & 43.65652\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 6 × 8\n",
       "\n",
       "| date &lt;date&gt; | quarter &lt;date&gt; | day_of_week &lt;chr&gt; | neighborhood &lt;chr&gt; | bike_cost &lt;dbl&gt; | location &lt;chr&gt; | long &lt;dbl&gt; | lat &lt;dbl&gt; |\n",
       "|---|---|---|---|---|---|---|---|\n",
       "| 2014-01-01 | 2014-01-01 | Wednesday | Waterfront Communities-The Island (77) | 1019 | Residential Structures | -79.37720 | 43.63388 |\n",
       "| 2014-01-03 | 2014-01-01 | Friday    | Humewood-Cedarvale (106)               |  560 | Residential Structures | -79.42768 | 43.69137 |\n",
       "| 2014-01-04 | 2014-01-01 | Saturday  | Church-Yonge Corridor (75)             |  200 | Residential Structures | -79.37902 | 43.65965 |\n",
       "| 2014-01-04 | 2014-01-01 | Saturday  | Leaside-Bennington (56)                |  900 | Residential Structures | -79.36607 | 43.70380 |\n",
       "| 2014-01-07 | 2014-01-01 | Tuesday   | South Riverdale (70)                   |  150 | Residential Structures | -79.33565 | 43.64929 |\n",
       "| 2014-01-08 | 2014-01-01 | Wednesday | Moss Park (73)                         |  479 | Residential Structures | -79.36730 | 43.65652 |\n",
       "\n"
      ],
      "text/plain": [
       "  date       quarter    day_of_week neighborhood                          \n",
       "1 2014-01-01 2014-01-01 Wednesday   Waterfront Communities-The Island (77)\n",
       "2 2014-01-03 2014-01-01 Friday      Humewood-Cedarvale (106)              \n",
       "3 2014-01-04 2014-01-01 Saturday    Church-Yonge Corridor (75)            \n",
       "4 2014-01-04 2014-01-01 Saturday    Leaside-Bennington (56)               \n",
       "5 2014-01-07 2014-01-01 Tuesday     South Riverdale (70)                  \n",
       "6 2014-01-08 2014-01-01 Wednesday   Moss Park (73)                        \n",
       "  bike_cost location               long      lat     \n",
       "1 1019      Residential Structures -79.37720 43.63388\n",
       "2  560      Residential Structures -79.42768 43.69137\n",
       "3  200      Residential Structures -79.37902 43.65965\n",
       "4  900      Residential Structures -79.36607 43.70380\n",
       "5  150      Residential Structures -79.33565 43.64929\n",
       "6  479      Residential Structures -79.36730 43.65652"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "## Load tidyverse package\n",
    "library(tidyverse)\n",
    "## Read `bike_data`\n",
    "\n",
    "bike_data <- read_csv(\"/kaggle/input/bicycles-data/Cleaned_Bicycle_Thefts_Open_Data.csv\")\n",
    "## Take a glance of the `bike_data`\n",
    "head(bike_data)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "70b633fb",
   "metadata": {
    "id": "jg5UOwzTXrFh",
    "papermill": {
     "duration": 0.021202,
     "end_time": "2025-07-21T02:26:09.730031",
     "exception": false,
     "start_time": "2025-07-21T02:26:09.708829",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": []
  },
  {
   "cell_type": "code",
   "execution_count": 31,
   "id": "a63dbd0f",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-07-21T02:26:09.777299Z",
     "iopub.status.busy": "2025-07-21T02:26:09.775521Z",
     "iopub.status.idle": "2025-07-21T02:26:09.790328Z",
     "shell.execute_reply": "2025-07-21T02:26:09.788331Z"
    },
    "id": "sDspieVojCJr",
    "outputId": "7a0eba2c-120c-494b-ed19-7582b420efed",
    "papermill": {
     "duration": 0.040785,
     "end_time": "2025-07-21T02:26:09.792771",
     "exception": false,
     "start_time": "2025-07-21T02:26:09.751986",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "library(tidyverse)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 32,
   "id": "1df54946",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-07-21T02:26:09.838334Z",
     "iopub.status.busy": "2025-07-21T02:26:09.836693Z",
     "iopub.status.idle": "2025-07-21T02:26:09.850727Z",
     "shell.execute_reply": "2025-07-21T02:26:09.848871Z"
    },
    "id": "qdpJA9gIjEAR",
    "papermill": {
     "duration": 0.040579,
     "end_time": "2025-07-21T02:26:09.853503",
     "exception": false,
     "start_time": "2025-07-21T02:26:09.812924",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "texto <- \"Hola Mundo\""
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 33,
   "id": "05acc02f",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-07-21T02:26:09.900895Z",
     "iopub.status.busy": "2025-07-21T02:26:09.898971Z",
     "iopub.status.idle": "2025-07-21T02:26:09.915453Z",
     "shell.execute_reply": "2025-07-21T02:26:09.913526Z"
    },
    "id": "Ca2u4TYijWhw",
    "papermill": {
     "duration": 0.043355,
     "end_time": "2025-07-21T02:26:09.918294",
     "exception": false,
     "start_time": "2025-07-21T02:26:09.874939",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "# Convertir a mayúsculas\n",
    "mayusculas <- toupper(texto)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 34,
   "id": "21174134",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-07-21T02:26:09.963516Z",
     "iopub.status.busy": "2025-07-21T02:26:09.961832Z",
     "iopub.status.idle": "2025-07-21T02:26:09.978360Z",
     "shell.execute_reply": "2025-07-21T02:26:09.976314Z"
    },
    "id": "6T0xsYp4jaeK",
    "outputId": "e6d629e0-046e-4388-e718-1d51b8d76b74",
    "papermill": {
     "duration": 0.042085,
     "end_time": "2025-07-21T02:26:09.981057",
     "exception": false,
     "start_time": "2025-07-21T02:26:09.938972",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "[1] \"HOLA MUNDO\"\n"
     ]
    }
   ],
   "source": [
    "print(mayusculas)  # \"HOLA MUNDO\""
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 35,
   "id": "f2393aa3",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-07-21T02:26:10.031574Z",
     "iopub.status.busy": "2025-07-21T02:26:10.029903Z",
     "iopub.status.idle": "2025-07-21T02:26:10.045761Z",
     "shell.execute_reply": "2025-07-21T02:26:10.043908Z"
    },
    "id": "AvjSMyUOjc-S",
    "papermill": {
     "duration": 0.046737,
     "end_time": "2025-07-21T02:26:10.048802",
     "exception": false,
     "start_time": "2025-07-21T02:26:10.002065",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "# Reemplazar \"Mundo\" con \"R\"\n",
    "reemplazo <- str_replace(texto, \"Mundo\", \"R\")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 36,
   "id": "33d5211a",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-07-21T02:26:10.097949Z",
     "iopub.status.busy": "2025-07-21T02:26:10.095903Z",
     "iopub.status.idle": "2025-07-21T02:26:10.114246Z",
     "shell.execute_reply": "2025-07-21T02:26:10.111579Z"
    },
    "id": "ttJHdeTWjoDe",
    "outputId": "ecbf1500-92d2-44b6-de04-07d432144ec5",
    "papermill": {
     "duration": 0.049148,
     "end_time": "2025-07-21T02:26:10.118570",
     "exception": false,
     "start_time": "2025-07-21T02:26:10.069422",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "[1] \"Hola R\"\n"
     ]
    }
   ],
   "source": [
    "print(reemplazo)   # \"Hola R\""
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 37,
   "id": "5e75cfe8",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-07-21T02:26:10.168745Z",
     "iopub.status.busy": "2025-07-21T02:26:10.167070Z",
     "iopub.status.idle": "2025-07-21T02:26:10.228220Z",
     "shell.execute_reply": "2025-07-21T02:26:10.226336Z"
    },
    "id": "EgDqhpvpjo4J",
    "papermill": {
     "duration": 0.088181,
     "end_time": "2025-07-21T02:26:10.230715",
     "exception": false,
     "start_time": "2025-07-21T02:26:10.142534",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 6 × 9</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>date</th><th scope=col>quarter</th><th scope=col>day_of_week</th><th scope=col>neighborhood</th><th scope=col>bike_cost</th><th scope=col>location</th><th scope=col>long</th><th scope=col>lat</th><th scope=col>format_quarter</th></tr>\n",
       "\t<tr><th scope=col>&lt;date&gt;</th><th scope=col>&lt;date&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;int&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>2014-01-01</td><td>2014-01-01</td><td>Wednesday</td><td>Waterfront Communities-The Island (77)</td><td>1019</td><td>Residential Structures</td><td>-79.37720</td><td>43.63388</td><td>1</td></tr>\n",
       "\t<tr><td>2014-01-03</td><td>2014-01-01</td><td>Friday   </td><td>Humewood-Cedarvale (106)              </td><td> 560</td><td>Residential Structures</td><td>-79.42768</td><td>43.69137</td><td>1</td></tr>\n",
       "\t<tr><td>2014-01-04</td><td>2014-01-01</td><td>Saturday </td><td>Church-Yonge Corridor (75)            </td><td> 200</td><td>Residential Structures</td><td>-79.37902</td><td>43.65965</td><td>1</td></tr>\n",
       "\t<tr><td>2014-01-04</td><td>2014-01-01</td><td>Saturday </td><td>Leaside-Bennington (56)               </td><td> 900</td><td>Residential Structures</td><td>-79.36607</td><td>43.70380</td><td>1</td></tr>\n",
       "\t<tr><td>2014-01-07</td><td>2014-01-01</td><td>Tuesday  </td><td>South Riverdale (70)                  </td><td> 150</td><td>Residential Structures</td><td>-79.33565</td><td>43.64929</td><td>1</td></tr>\n",
       "\t<tr><td>2014-01-08</td><td>2014-01-01</td><td>Wednesday</td><td>Moss Park (73)                        </td><td> 479</td><td>Residential Structures</td><td>-79.36730</td><td>43.65652</td><td>1</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 6 × 9\n",
       "\\begin{tabular}{lllllllll}\n",
       " date & quarter & day\\_of\\_week & neighborhood & bike\\_cost & location & long & lat & format\\_quarter\\\\\n",
       " <date> & <date> & <chr> & <chr> & <dbl> & <chr> & <dbl> & <dbl> & <int>\\\\\n",
       "\\hline\n",
       "\t 2014-01-01 & 2014-01-01 & Wednesday & Waterfront Communities-The Island (77) & 1019 & Residential Structures & -79.37720 & 43.63388 & 1\\\\\n",
       "\t 2014-01-03 & 2014-01-01 & Friday    & Humewood-Cedarvale (106)               &  560 & Residential Structures & -79.42768 & 43.69137 & 1\\\\\n",
       "\t 2014-01-04 & 2014-01-01 & Saturday  & Church-Yonge Corridor (75)             &  200 & Residential Structures & -79.37902 & 43.65965 & 1\\\\\n",
       "\t 2014-01-04 & 2014-01-01 & Saturday  & Leaside-Bennington (56)                &  900 & Residential Structures & -79.36607 & 43.70380 & 1\\\\\n",
       "\t 2014-01-07 & 2014-01-01 & Tuesday   & South Riverdale (70)                   &  150 & Residential Structures & -79.33565 & 43.64929 & 1\\\\\n",
       "\t 2014-01-08 & 2014-01-01 & Wednesday & Moss Park (73)                         &  479 & Residential Structures & -79.36730 & 43.65652 & 1\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 6 × 9\n",
       "\n",
       "| date &lt;date&gt; | quarter &lt;date&gt; | day_of_week &lt;chr&gt; | neighborhood &lt;chr&gt; | bike_cost &lt;dbl&gt; | location &lt;chr&gt; | long &lt;dbl&gt; | lat &lt;dbl&gt; | format_quarter &lt;int&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|\n",
       "| 2014-01-01 | 2014-01-01 | Wednesday | Waterfront Communities-The Island (77) | 1019 | Residential Structures | -79.37720 | 43.63388 | 1 |\n",
       "| 2014-01-03 | 2014-01-01 | Friday    | Humewood-Cedarvale (106)               |  560 | Residential Structures | -79.42768 | 43.69137 | 1 |\n",
       "| 2014-01-04 | 2014-01-01 | Saturday  | Church-Yonge Corridor (75)             |  200 | Residential Structures | -79.37902 | 43.65965 | 1 |\n",
       "| 2014-01-04 | 2014-01-01 | Saturday  | Leaside-Bennington (56)                |  900 | Residential Structures | -79.36607 | 43.70380 | 1 |\n",
       "| 2014-01-07 | 2014-01-01 | Tuesday   | South Riverdale (70)                   |  150 | Residential Structures | -79.33565 | 43.64929 | 1 |\n",
       "| 2014-01-08 | 2014-01-01 | Wednesday | Moss Park (73)                         |  479 | Residential Structures | -79.36730 | 43.65652 | 1 |\n",
       "\n"
      ],
      "text/plain": [
       "  date       quarter    day_of_week neighborhood                          \n",
       "1 2014-01-01 2014-01-01 Wednesday   Waterfront Communities-The Island (77)\n",
       "2 2014-01-03 2014-01-01 Friday      Humewood-Cedarvale (106)              \n",
       "3 2014-01-04 2014-01-01 Saturday    Church-Yonge Corridor (75)            \n",
       "4 2014-01-04 2014-01-01 Saturday    Leaside-Bennington (56)               \n",
       "5 2014-01-07 2014-01-01 Tuesday     South Riverdale (70)                  \n",
       "6 2014-01-08 2014-01-01 Wednesday   Moss Park (73)                        \n",
       "  bike_cost location               long      lat      format_quarter\n",
       "1 1019      Residential Structures -79.37720 43.63388 1             \n",
       "2  560      Residential Structures -79.42768 43.69137 1             \n",
       "3  200      Residential Structures -79.37902 43.65965 1             \n",
       "4  900      Residential Structures -79.36607 43.70380 1             \n",
       "5  150      Residential Structures -79.33565 43.64929 1             \n",
       "6  479      Residential Structures -79.36730 43.65652 1             "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# Obtener el trimestre\n",
    "bike_data$format_quarter <- quarter(bike_data$quarter)\n",
    "\n",
    "head(bike_data)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 38,
   "id": "bf2a46ae",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-07-21T02:26:10.278331Z",
     "iopub.status.busy": "2025-07-21T02:26:10.276697Z",
     "iopub.status.idle": "2025-07-21T02:26:10.325473Z",
     "shell.execute_reply": "2025-07-21T02:26:10.323667Z"
    },
    "papermill": {
     "duration": 0.075097,
     "end_time": "2025-07-21T02:26:10.328306",
     "exception": false,
     "start_time": "2025-07-21T02:26:10.253209",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 6 × 9</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>date</th><th scope=col>quarter</th><th scope=col>day_of_week</th><th scope=col>neighborhood</th><th scope=col>bike_cost</th><th scope=col>location</th><th scope=col>long</th><th scope=col>lat</th><th scope=col>format_quarter</th></tr>\n",
       "\t<tr><th scope=col>&lt;date&gt;</th><th scope=col>&lt;date&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>2014-01-01</td><td>2014-01-01</td><td>Wednesday</td><td>Waterfront Communities-The Island (77)</td><td>1019</td><td>Residential Structures</td><td>-79.37720</td><td>43.63388</td><td>Q1</td></tr>\n",
       "\t<tr><td>2014-01-03</td><td>2014-01-01</td><td>Friday   </td><td>Humewood-Cedarvale (106)              </td><td> 560</td><td>Residential Structures</td><td>-79.42768</td><td>43.69137</td><td>Q1</td></tr>\n",
       "\t<tr><td>2014-01-04</td><td>2014-01-01</td><td>Saturday </td><td>Church-Yonge Corridor (75)            </td><td> 200</td><td>Residential Structures</td><td>-79.37902</td><td>43.65965</td><td>Q1</td></tr>\n",
       "\t<tr><td>2014-01-04</td><td>2014-01-01</td><td>Saturday </td><td>Leaside-Bennington (56)               </td><td> 900</td><td>Residential Structures</td><td>-79.36607</td><td>43.70380</td><td>Q1</td></tr>\n",
       "\t<tr><td>2014-01-07</td><td>2014-01-01</td><td>Tuesday  </td><td>South Riverdale (70)                  </td><td> 150</td><td>Residential Structures</td><td>-79.33565</td><td>43.64929</td><td>Q1</td></tr>\n",
       "\t<tr><td>2014-01-08</td><td>2014-01-01</td><td>Wednesday</td><td>Moss Park (73)                        </td><td> 479</td><td>Residential Structures</td><td>-79.36730</td><td>43.65652</td><td>Q1</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 6 × 9\n",
       "\\begin{tabular}{lllllllll}\n",
       " date & quarter & day\\_of\\_week & neighborhood & bike\\_cost & location & long & lat & format\\_quarter\\\\\n",
       " <date> & <date> & <chr> & <chr> & <dbl> & <chr> & <dbl> & <dbl> & <chr>\\\\\n",
       "\\hline\n",
       "\t 2014-01-01 & 2014-01-01 & Wednesday & Waterfront Communities-The Island (77) & 1019 & Residential Structures & -79.37720 & 43.63388 & Q1\\\\\n",
       "\t 2014-01-03 & 2014-01-01 & Friday    & Humewood-Cedarvale (106)               &  560 & Residential Structures & -79.42768 & 43.69137 & Q1\\\\\n",
       "\t 2014-01-04 & 2014-01-01 & Saturday  & Church-Yonge Corridor (75)             &  200 & Residential Structures & -79.37902 & 43.65965 & Q1\\\\\n",
       "\t 2014-01-04 & 2014-01-01 & Saturday  & Leaside-Bennington (56)                &  900 & Residential Structures & -79.36607 & 43.70380 & Q1\\\\\n",
       "\t 2014-01-07 & 2014-01-01 & Tuesday   & South Riverdale (70)                   &  150 & Residential Structures & -79.33565 & 43.64929 & Q1\\\\\n",
       "\t 2014-01-08 & 2014-01-01 & Wednesday & Moss Park (73)                         &  479 & Residential Structures & -79.36730 & 43.65652 & Q1\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 6 × 9\n",
       "\n",
       "| date &lt;date&gt; | quarter &lt;date&gt; | day_of_week &lt;chr&gt; | neighborhood &lt;chr&gt; | bike_cost &lt;dbl&gt; | location &lt;chr&gt; | long &lt;dbl&gt; | lat &lt;dbl&gt; | format_quarter &lt;chr&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|\n",
       "| 2014-01-01 | 2014-01-01 | Wednesday | Waterfront Communities-The Island (77) | 1019 | Residential Structures | -79.37720 | 43.63388 | Q1 |\n",
       "| 2014-01-03 | 2014-01-01 | Friday    | Humewood-Cedarvale (106)               |  560 | Residential Structures | -79.42768 | 43.69137 | Q1 |\n",
       "| 2014-01-04 | 2014-01-01 | Saturday  | Church-Yonge Corridor (75)             |  200 | Residential Structures | -79.37902 | 43.65965 | Q1 |\n",
       "| 2014-01-04 | 2014-01-01 | Saturday  | Leaside-Bennington (56)                |  900 | Residential Structures | -79.36607 | 43.70380 | Q1 |\n",
       "| 2014-01-07 | 2014-01-01 | Tuesday   | South Riverdale (70)                   |  150 | Residential Structures | -79.33565 | 43.64929 | Q1 |\n",
       "| 2014-01-08 | 2014-01-01 | Wednesday | Moss Park (73)                         |  479 | Residential Structures | -79.36730 | 43.65652 | Q1 |\n",
       "\n"
      ],
      "text/plain": [
       "  date       quarter    day_of_week neighborhood                          \n",
       "1 2014-01-01 2014-01-01 Wednesday   Waterfront Communities-The Island (77)\n",
       "2 2014-01-03 2014-01-01 Friday      Humewood-Cedarvale (106)              \n",
       "3 2014-01-04 2014-01-01 Saturday    Church-Yonge Corridor (75)            \n",
       "4 2014-01-04 2014-01-01 Saturday    Leaside-Bennington (56)               \n",
       "5 2014-01-07 2014-01-01 Tuesday     South Riverdale (70)                  \n",
       "6 2014-01-08 2014-01-01 Wednesday   Moss Park (73)                        \n",
       "  bike_cost location               long      lat      format_quarter\n",
       "1 1019      Residential Structures -79.37720 43.63388 Q1            \n",
       "2  560      Residential Structures -79.42768 43.69137 Q1            \n",
       "3  200      Residential Structures -79.37902 43.65965 Q1            \n",
       "4  900      Residential Structures -79.36607 43.70380 Q1            \n",
       "5  150      Residential Structures -79.33565 43.64929 Q1            \n",
       "6  479      Residential Structures -79.36730 43.65652 Q1            "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# cambiar de valor de quarter a Q1, Q2, Q3, etc.\n",
    "bike_data$format_quarter <- paste0(\"Q\",bike_data$format_quarter)\n",
    "head(bike_data)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "02b00bd6",
   "metadata": {
    "id": "9ki798ADStSY",
    "papermill": {
     "duration": 0.025805,
     "end_time": "2025-07-21T02:26:10.378234",
     "exception": false,
     "start_time": "2025-07-21T02:26:10.352429",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## Actividad 4: Exploración de Tendencias en los Datos\n",
    "\n",
    "Utiliza gráficos para descubrir tendencias significativas dentro del conjunto de datos de robos de bicicletas explorando las siguientes preguntas:\n",
    "\n",
    "1. ¿Qué trimestre, es decir, \"Q1\", \"Q2\", \"Q3\" y \"Q4\", tiene el mayor y menor número de bicicletas robadas? Almacena tus hallazgos como variables de tipo cadena, `high` y `low`.\n",
    "\n",
    "2. ¿Cuáles son las ubicaciones más frecuentes (por ejemplo, residenciales, áreas comerciales) de robos de bicicletas en Toronto? ¿Y qué proporción representan (redondeada a un decimal)? Almacena tus hallazgos como una variable de tipo cadena, `location`, y una variable numérica, `percentage`.\n",
    "\n",
    "3. ¿En qué región de Toronto el valor mediano o la mediana de las bicicletas robadas es el más alto? Almacena tus hallazgos como una variable de tipo cadena, `region` (la región puede ser un nombre real o un código de región, es decir, \"1\", \"2\", \"3\", ...).\n",
    "\n",
    "4. ¿Qué curso de acción recomendarías a la estación de policía basándote en tus hallazgos? Almacena tu recomendación como una variable de tipo cadena, `action`.\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 39,
   "id": "93acf470",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-07-21T02:26:10.431178Z",
     "iopub.status.busy": "2025-07-21T02:26:10.429498Z",
     "iopub.status.idle": "2025-07-21T02:26:10.464655Z",
     "shell.execute_reply": "2025-07-21T02:26:10.462748Z"
    },
    "papermill": {
     "duration": 0.062739,
     "end_time": "2025-07-21T02:26:10.467419",
     "exception": false,
     "start_time": "2025-07-21T02:26:10.404680",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 4 × 2</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>format_quarter</th><th scope=col>total_per_quarter</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>Q1</td><td> 2890</td></tr>\n",
       "\t<tr><td>Q2</td><td> 5003</td></tr>\n",
       "\t<tr><td>Q3</td><td>13326</td></tr>\n",
       "\t<tr><td>Q4</td><td>10614</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 4 × 2\n",
       "\\begin{tabular}{ll}\n",
       " format\\_quarter & total\\_per\\_quarter\\\\\n",
       " <chr> & <int>\\\\\n",
       "\\hline\n",
       "\t Q1 &  2890\\\\\n",
       "\t Q2 &  5003\\\\\n",
       "\t Q3 & 13326\\\\\n",
       "\t Q4 & 10614\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 4 × 2\n",
       "\n",
       "| format_quarter &lt;chr&gt; | total_per_quarter &lt;int&gt; |\n",
       "|---|---|\n",
       "| Q1 |  2890 |\n",
       "| Q2 |  5003 |\n",
       "| Q3 | 13326 |\n",
       "| Q4 | 10614 |\n",
       "\n"
      ],
      "text/plain": [
       "  format_quarter total_per_quarter\n",
       "1 Q1              2890            \n",
       "2 Q2              5003            \n",
       "3 Q3             13326            \n",
       "4 Q4             10614            "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "quarter_data <- bike_data %>%\n",
    "  group_by(format_quarter) %>%\n",
    "  summarize(total_per_quarter = n())\n",
    "quarter_data"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 40,
   "id": "152ab8b5",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-07-21T02:26:10.513864Z",
     "iopub.status.busy": "2025-07-21T02:26:10.512230Z",
     "iopub.status.idle": "2025-07-21T02:26:10.529534Z",
     "shell.execute_reply": "2025-07-21T02:26:10.527754Z"
    },
    "papermill": {
     "duration": 0.043294,
     "end_time": "2025-07-21T02:26:10.532102",
     "exception": false,
     "start_time": "2025-07-21T02:26:10.488808",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "min_index <- which.min(quarter_data$total_per_quarter)\n",
    "min_etiqueta <- quarter_data$format_quarter[min_index]\n",
    "min_valor <- quarter_data$total_per_quarter[min_index]"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 41,
   "id": "c24e6f41",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-07-21T02:26:10.582413Z",
     "iopub.status.busy": "2025-07-21T02:26:10.580903Z",
     "iopub.status.idle": "2025-07-21T02:26:10.598381Z",
     "shell.execute_reply": "2025-07-21T02:26:10.596593Z"
    },
    "papermill": {
     "duration": 0.047027,
     "end_time": "2025-07-21T02:26:10.600892",
     "exception": false,
     "start_time": "2025-07-21T02:26:10.553865",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "max_index <- which.max(quarter_data$total_per_quarter)\n",
    "max_etiqueta <- quarter_data$format_quarter[max_index]\n",
    "max_valor <- quarter_data$total_per_quarter[max_index]"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 42,
   "id": "0b367f02",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-07-21T02:26:10.648167Z",
     "iopub.status.busy": "2025-07-21T02:26:10.646596Z",
     "iopub.status.idle": "2025-07-21T02:26:10.666160Z",
     "shell.execute_reply": "2025-07-21T02:26:10.664302Z"
    },
    "papermill": {
     "duration": 0.046474,
     "end_time": "2025-07-21T02:26:10.668825",
     "exception": false,
     "start_time": "2025-07-21T02:26:10.622351",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "'El trimestre con menor número de robos fue: Q1 con 2890 y el trimestre con mayor robos fue: Q3 con 13326'"
      ],
      "text/latex": [
       "'El trimestre con menor número de robos fue: Q1 con 2890 y el trimestre con mayor robos fue: Q3 con 13326'"
      ],
      "text/markdown": [
       "'El trimestre con menor número de robos fue: Q1 con 2890 y el trimestre con mayor robos fue: Q3 con 13326'"
      ],
      "text/plain": [
       "[1] \"El trimestre con menor número de robos fue: Q1 con 2890 y el trimestre con mayor robos fue: Q3 con 13326\""
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "min_and_max_q <- paste(\"El trimestre con menor número de robos fue:\", \n",
    "                  min_etiqueta, \"con\", min_valor, \n",
    "                       \"y el trimestre con mayor robos fue:\",max_etiqueta, \"con\", max_valor)\n",
    "min_and_max_q"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 43,
   "id": "faf1ff2a",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-07-21T02:26:10.716727Z",
     "iopub.status.busy": "2025-07-21T02:26:10.715016Z",
     "iopub.status.idle": "2025-07-21T02:26:10.962913Z",
     "shell.execute_reply": "2025-07-21T02:26:10.960927Z"
    },
    "papermill": {
     "duration": 0.274466,
     "end_time": "2025-07-21T02:26:10.965338",
     "exception": false,
     "start_time": "2025-07-21T02:26:10.690872",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "iVBORw0KGgoAAAANSUhEUgAAA0gAAANICAIAAAByhViMAAAABmJLR0QA/wD/AP+gvaeTAAAg\nAElEQVR4nO3deXSV9Z348Sd7SEISNoMagQqKWlBwpQUPttZT7OJStfZIqbvj0Tp07Nij42id\ndhRmtLbjqRxbsYrjgrtVO4JbtZVDHVRwPw7KogUViKzZgOT+/ri/ZjJAVkhu8snr9de9z715\nns+950vum+feJFmpVCoBAKD3y870AAAA7BnCDgAgCGEHABCEsAMACELYAQAEIewAAIIQdgAA\nQQi7DLv44osvvPDCTE/RLhdeeOHFF1+c6SkAgBYJux09+uijWS374Q9/2OYeXnnllZKSknYe\nbsmSJYsXL969kTvs4osv7sRjXLx48ZIlS7pzzg49kwCAsNvRd77zndTf3H///UmSPPTQQ01b\nfv3rX7e5hwULFnT9mLvltttu68RjfPXVV//yl79055w9/5kEgB5F2HXS448//qUvfam4uLio\nqOjII4+877770tu/9rWv/fjHP66urs7KypoyZUp648MPP3zUUUf169dv4MCBkydP/tOf/tSe\nQxx66KEnnHDCo48+OmbMmIKCgqFDh15xxRXbtm1rc4YkSY466qhvfOMbjzzyyNChQ0899dRO\nPMCd93DkkUdOmDAhfevRRx89ZcqUp556asyYMYWFhSNGjPjd7363du3aM888s7y8fNCgQeee\ne25NTU3T3l544YXjjjuupKSkuLh4woQJjzzySNNNq1atOu+884YNG1ZYWDh8+PB/+Id/2LJl\nyy6fyV0+qFb2DAB9jbDrjAceeODUU0897rjjli5dunLlyjPPPHPq1Kl33nlnkiTPPffc2Wef\nXVxcnEql5s2blyTJE088ccYZZ0yZMuWzzz5777339t13369//evvv/9+m0cpKCh44403br75\n5gceeGDjxo3XXnvtTTfddM0117Q5Q5Ik+fn5GzZseOyxx9577725c+d24jG2voeCgoJ33nnn\n1ltvfeqppz7++OPhw4dffPHFp5xyymmnnfbXv/71t7/97V133XXLLbek7/zMM8+ccMIJhx9+\n+LJly5YtW3b88ceffvrpTRl6yimnLF68eN68eRs3bpw7d+5DDz10zjnn7PKZ3Hmk1vcMAH1O\nipbt/DZl2siRI4844ojmWyZNmjR8+PD05aYcSbvgggsqKioaGhrSV1esWJEkyfXXX5++eswx\nx+ywqybHHHNMkiRLlixp2vKVr3yltLR027Ztbc4wefLk7OzspUuXdvox7ryHI4444phjjmm6\nNSsr68MPP0xfTWfWRRdd1HTngw46aMqUKenLY8aMmTRpUvOdT5gwYcSIEalUqqqqqvmzkUql\nZs+evd9++23cuDG10zO580it7BkA+iBn7Drso48++vDDD0844YTmG7/yla+sXLly5cqVO9//\n9ttv//TTT7Oz//9Tvd9++yVJsst77mzw4MGHHXZY09VJkyZt2rTpr3/9a3tmGDx48KhRozry\nyHZx9Fb2UFFRsf/++6cv77XXXkmSpEu0acuaNWuSJPnkk0/efvvtHUY9/vjjV6xYsW7duuLi\n4rKysrvuumvBggWpVCpJkvPPP/+jjz4qLS1tc6TW99yJxwsAvZ2w67BVq1YlSVJRUdF845Ah\nQ5IkWb169c7337Rp009/+tPx48cPHDgwPz8/Ly8vSZKGhob2HGvvvfdufnXQoEFJkqxdu7Y9\nMwwcOLC9D6kFre8hPUxaVlbWDvfPyspKP8b0qD/96U+b/+Dt9ddfn76poKDg0UcframpmTRp\nUkVFxZlnnvnYY4+lC6/NkVrfc2cfNAD0YsKuw9IRs0N8pK82nZZr7pvf/OaNN9542WWXvfPO\nO5s3b966dWv7j7XDDhsbG9Mb2zNDTk5O+w+0S7u/hyYzZ87c+XRx+mTkV7/61WXLlv3hD3/4\n7ne/u3Dhwu985zunnXZa+0dqZc8A0NcIuw6rrKxMkuSTTz5pvvGzzz5LkmTffffd4c7vv//+\nyy+//OMf//i8887be++9CwoKdnlWryVr165tfjX9ibQhQ4Z0aIbMas9bz/n5+d/4xjd+/etf\nr1ix4vLLL3/sscfa83tVOvSmNgD0BcKuwyorKw866KBnn322+cbnnntu9OjR6d7Kzs5uOpdW\nX1+f/O1N0rTbb7892elkW0tWr169dOnSpqsvv/zysGHD9ttvvzZn6DkqKirGjh37+9//fvv2\n7U0bzz///PQfsZg/f/6+++776aefprdnZ2d/+9vfTpIk/SG55s9kR/cMAH2QsOuMGTNmvPHG\nG9dcc83atWvXrl3785//fNGiRTNmzEjfus8++9TU1Lz77rvV1dWjR4+uqKi45557Vq9evWHD\nhpkzZ/75z3+uqKh46623amtr2zzQkCFDzjnnnHfeeaeurm7WrFkvvfRS+o9GtDlDjzJjxoxP\n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\n6av333//448/fumll3788ccZmjEU51TojPfff3/o0KHDhw9v2pKdnT1x4sRXX301g1ORKa2s\nh6Kioqbtr7322pgxYzI0I93ngw8+aGk9lJSUpN973bJly/z584855pjMjUk3Wb58eSuvF6tX\nr37ttde+9a1vZW7AaIQdnVFdXd384xFpAwYMqK6uzsg8ZFZtbW2b6+GVV1559tlnzz333O4d\njQyoqalpfT3cfvvtZ5111ieffHLWWWd1+3R0t7q6ulbWw29+85sLLrjAX4zdg4QdnTFo0KCq\nqqodNq5fv37IkCEZmYfMGjhwYOvr4bnnnrvrrrt+/vOf+xhNXzBgwIDW18OFF144d+7co48+\n+uqrr075e+XRlZWVtbQeXnrppb333nv06NEZGSwqYUdnfOELX1izZs2HH37YtCWVSi1YsGDs\n2LEZnIpMGT58eCvr4c9//vMTTzxxww03DB06NHMz0n2GDRvW0npYvXp1entRUdHJJ5+8cuXK\nDRs2ZG5SukNlZWVL6+GPf/zjf/3Xf5100kknnXTSRx99dMkllyxYsCCDo8Yg7OiM8vLyk08+\necaMGUuWLKmrq1u7du2NN96Yl5c3efLkTI9GBpSVlbW0HjZt2nTHHXdce+21AwYMyPSYdJPS\n0tKW1sNHH310/fXXr1y5sr6+fv78+WVlZTu/SUcw/fv3b2k9XHfddU/8zbBhw2bNmjVx4sRM\nz9vrZTkNTqc9+eSTTzzxxGeffVZaWnrsscdOmzatqKho06ZN3//+95vfbc6cOV7U+4Jdrofn\nnnvulltuaX43v92wj9jlekiS5MEHH5w3b96mTZsqKysvuuiiQw45JNOT0h1aWg9NfvjDH155\n5ZV+j93uE3bsrgceeOCVV165+uqry8vLfQAW64HmrAeasx66Qc51112X6Rno3UaPHl1bW/vM\nM8+sWbPGf76xHmjOeqA566EbOGMHABCEH54AAAhC2AEABCHsAACCEHYAAEEIOwCAIIQdAEAQ\nwg4AIAhhBwAQhLADAAhC2AEABCHsADomKyvr4YcfzvQUALsg7ACS733ve1m7Mm7cuJ3vnEql\nTj/99K4b5p/+6Z9mzpzZdfsHAhN2AMncuXNTqVQqlVq+fHmSJE8//XT66pIlS7p/mMWLF3f/\nQYEYhB1AG7Kzs+++++4xY8accMIJSbO3YnNycubOnXvCCScUFRUdeOCBCxYsuPvuu4cNG1Za\nWjp16tSGhob0l69bt+4HP/hBZWVlv379jjzyyPnz56e333vvvWPGjOnXr9/gwYPPPPPMtWvX\nJkkyadKkefPmXXXVVYMHD9750C3tCiBN2AG0obCw8De/+c2999779NNP77D93/7t32bOnLl6\n9erhw4dPnTr1L3/5y5tvvvnMM8888MADf/jDH9J3O+2006qqqhYsWLBmzZpp06Z9+9vfXrly\n5cqVK3/wgx/8y7/8y8aNG99+++3q6urrrrsuSZKXX3555MiRM2bMWLdu3c6H3nlX6RwESBN2\nAG3Izs6ePHnyYYcdlpub23x7VlbWaaeddsQRR5SXl59yyikrV6684YYbysvLJ0yYcMABB7z3\n3ntJkrz99tt/+tOffvnLXw4fPrx///7Tp0//4he/eNddd23evLmxsbGsrCw/P3/o0KFPPfXU\nrbfe2vqhd7mrF198sXueBKBXyG37LgB93qhRo3a5ff/9909fKC4uHjBgQHl5edPV2traJEne\nf//9JElGjx7d/KsOPfTQL37xi9OnT58yZcqhhx56/PHHn3HGGUcffXTrh97lrtasWdPpBwXE\n44wdQNvy8/N3uT07O3uXl5v069cvSZL169enmpkzZ05WVtavfvWrFStWXHLJJUuXLv3yl798\n/fXXt37oXe7q0ksv3c2HBkQi7AC6UPoE2+uvv77LWysrKy+44ILHH3/8hhtu2OVbse3fFUAi\n7AC61MiRI7/1rW9dfvnlb7/9dn19/bPPPjty5MhFixY9+OCDY8eOfeONN7Zt21ZVVbV48eKD\nDjoo/SVFRUUrVqzYunVrKpVqc1cffvhhJh4W0EP5jB3A/yooKDjyyCPLysqabzz88MMHDRrU\ndPXII48cMGBAevvAgQPTGwcPHtz8txkfcsgh++yzT/ryPffcc/PNN0+fPr2urq6ysvKmm246\n6qijxo8fv3bt2muuuWbdunUlJSXjx4//5S9/mb7/tddee8stt5x44olPPvnkDofeeVcjR47s\nmmcC6JWydvgfIQAAvZS3YgEAghB2AABBCDsAgCCEHQBAEMIOACAIYQcAEISwAwAIQtgBAAQh\n7AAAghB2AABBCDsAgCCEHQBAEMIOACCI/wfly9DZZXB7eQAAAABJRU5ErkJggg=="
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "ggplot(quarter_data, aes(x = format_quarter, y = total_per_quarter)) +\n",
    "  geom_bar(stat = \"identity\", fill = \"skyblue\") +\n",
    "  labs(\n",
    "    title = \"Total por Trimestre\",\n",
    "    x = \"Trimestre\",\n",
    "    y = \"Total\"\n",
    "  ) +\n",
    "  theme_minimal()"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "b106ef3b",
   "metadata": {
    "papermill": {
     "duration": 0.023254,
     "end_time": "2025-07-21T02:26:11.010726",
     "exception": false,
     "start_time": "2025-07-21T02:26:10.987472",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**2. ¿Cuáles son las ubicaciones más frecuentes (por ejemplo, residenciales, áreas comerciales) de robos de bicicletas en Toronto? ¿Y qué proporción representan (redondeada a un decimal)? Almacena tus hallazgos como una variable de tipo cadena, location, y una variable numérica, percentage.**"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 44,
   "id": "1641d4f3",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-07-21T02:26:11.061308Z",
     "iopub.status.busy": "2025-07-21T02:26:11.059723Z",
     "iopub.status.idle": "2025-07-21T02:26:11.091786Z",
     "shell.execute_reply": "2025-07-21T02:26:11.090049Z"
    },
    "papermill": {
     "duration": 0.058892,
     "end_time": "2025-07-21T02:26:11.094138",
     "exception": false,
     "start_time": "2025-07-21T02:26:11.035246",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 7 × 2</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>location</th><th scope=col>total_robberies</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>Commercial Areas      </td><td> 8246</td></tr>\n",
       "\t<tr><td>Group/Shared Home     </td><td>  123</td></tr>\n",
       "\t<tr><td>Open/Public Spaces    </td><td> 6424</td></tr>\n",
       "\t<tr><td>Others                </td><td>  538</td></tr>\n",
       "\t<tr><td>Public Institutions   </td><td>  668</td></tr>\n",
       "\t<tr><td>Residential Structures</td><td>15120</td></tr>\n",
       "\t<tr><td>Transportation        </td><td>  714</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 7 × 2\n",
       "\\begin{tabular}{ll}\n",
       " location & total\\_robberies\\\\\n",
       " <chr> & <int>\\\\\n",
       "\\hline\n",
       "\t Commercial Areas       &  8246\\\\\n",
       "\t Group/Shared Home      &   123\\\\\n",
       "\t Open/Public Spaces     &  6424\\\\\n",
       "\t Others                 &   538\\\\\n",
       "\t Public Institutions    &   668\\\\\n",
       "\t Residential Structures & 15120\\\\\n",
       "\t Transportation         &   714\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 7 × 2\n",
       "\n",
       "| location &lt;chr&gt; | total_robberies &lt;int&gt; |\n",
       "|---|---|\n",
       "| Commercial Areas       |  8246 |\n",
       "| Group/Shared Home      |   123 |\n",
       "| Open/Public Spaces     |  6424 |\n",
       "| Others                 |   538 |\n",
       "| Public Institutions    |   668 |\n",
       "| Residential Structures | 15120 |\n",
       "| Transportation         |   714 |\n",
       "\n"
      ],
      "text/plain": [
       "  location               total_robberies\n",
       "1 Commercial Areas        8246          \n",
       "2 Group/Shared Home        123          \n",
       "3 Open/Public Spaces      6424          \n",
       "4 Others                   538          \n",
       "5 Public Institutions      668          \n",
       "6 Residential Structures 15120          \n",
       "7 Transportation           714          "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "location_data <- bike_data %>%\n",
    "  group_by(location) %>%\n",
    "  summarize(total_robberies = n())\n",
    "location_data"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 45,
   "id": "3b9d40e1",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-07-21T02:26:11.142460Z",
     "iopub.status.busy": "2025-07-21T02:26:11.140834Z",
     "iopub.status.idle": "2025-07-21T02:26:11.170732Z",
     "shell.execute_reply": "2025-07-21T02:26:11.169062Z"
    },
    "papermill": {
     "duration": 0.056714,
     "end_time": "2025-07-21T02:26:11.173080",
     "exception": false,
     "start_time": "2025-07-21T02:26:11.116366",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 7 × 3</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>location</th><th scope=col>total_robberies</th><th scope=col>percentage</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>Commercial Areas      </td><td> 8246</td><td>25.90</td></tr>\n",
       "\t<tr><td>Group/Shared Home     </td><td>  123</td><td> 0.39</td></tr>\n",
       "\t<tr><td>Open/Public Spaces    </td><td> 6424</td><td>20.18</td></tr>\n",
       "\t<tr><td>Others                </td><td>  538</td><td> 1.69</td></tr>\n",
       "\t<tr><td>Public Institutions   </td><td>  668</td><td> 2.10</td></tr>\n",
       "\t<tr><td>Residential Structures</td><td>15120</td><td>47.50</td></tr>\n",
       "\t<tr><td>Transportation        </td><td>  714</td><td> 2.24</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 7 × 3\n",
       "\\begin{tabular}{lll}\n",
       " location & total\\_robberies & percentage\\\\\n",
       " <chr> & <int> & <dbl>\\\\\n",
       "\\hline\n",
       "\t Commercial Areas       &  8246 & 25.90\\\\\n",
       "\t Group/Shared Home      &   123 &  0.39\\\\\n",
       "\t Open/Public Spaces     &  6424 & 20.18\\\\\n",
       "\t Others                 &   538 &  1.69\\\\\n",
       "\t Public Institutions    &   668 &  2.10\\\\\n",
       "\t Residential Structures & 15120 & 47.50\\\\\n",
       "\t Transportation         &   714 &  2.24\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 7 × 3\n",
       "\n",
       "| location &lt;chr&gt; | total_robberies &lt;int&gt; | percentage &lt;dbl&gt; |\n",
       "|---|---|---|\n",
       "| Commercial Areas       |  8246 | 25.90 |\n",
       "| Group/Shared Home      |   123 |  0.39 |\n",
       "| Open/Public Spaces     |  6424 | 20.18 |\n",
       "| Others                 |   538 |  1.69 |\n",
       "| Public Institutions    |   668 |  2.10 |\n",
       "| Residential Structures | 15120 | 47.50 |\n",
       "| Transportation         |   714 |  2.24 |\n",
       "\n"
      ],
      "text/plain": [
       "  location               total_robberies percentage\n",
       "1 Commercial Areas        8246           25.90     \n",
       "2 Group/Shared Home        123            0.39     \n",
       "3 Open/Public Spaces      6424           20.18     \n",
       "4 Others                   538            1.69     \n",
       "5 Public Institutions      668            2.10     \n",
       "6 Residential Structures 15120           47.50     \n",
       "7 Transportation           714            2.24     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "location_data <- location_data %>% mutate(percentage = round((total_robberies / sum(total_robberies)) * 100,2))\n",
    "location_data"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 46,
   "id": "267580b9",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-07-21T02:26:11.221657Z",
     "iopub.status.busy": "2025-07-21T02:26:11.220138Z",
     "iopub.status.idle": "2025-07-21T02:26:11.238012Z",
     "shell.execute_reply": "2025-07-21T02:26:11.236279Z"
    },
    "papermill": {
     "duration": 0.044923,
     "end_time": "2025-07-21T02:26:11.240448",
     "exception": false,
     "start_time": "2025-07-21T02:26:11.195525",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "\n",
    "max_location <- location_data$location[max_index]\n",
    "max_valor_location <- location_data$total_robberies[max_index]\n",
    "max_percent_location <- location_data$percentage[max_index]\n",
    "\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 47,
   "id": "79e007cd",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-07-21T02:26:11.289449Z",
     "iopub.status.busy": "2025-07-21T02:26:11.287966Z",
     "iopub.status.idle": "2025-07-21T02:26:11.306274Z",
     "shell.execute_reply": "2025-07-21T02:26:11.304541Z"
    },
    "papermill": {
     "duration": 0.046108,
     "end_time": "2025-07-21T02:26:11.308773",
     "exception": false,
     "start_time": "2025-07-21T02:26:11.262665",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "'La ubicación con mayor cantidad de robos fue Open/Public Spaces con 6424 lo que representa: 20.18 del total'"
      ],
      "text/latex": [
       "'La ubicación con mayor cantidad de robos fue Open/Public Spaces con 6424 lo que representa: 20.18 del total'"
      ],
      "text/markdown": [
       "'La ubicación con mayor cantidad de robos fue Open/Public Spaces con 6424 lo que representa: 20.18 del total'"
      ],
      "text/plain": [
       "[1] \"La ubicación con mayor cantidad de robos fue Open/Public Spaces con 6424 lo que representa: 20.18 del total\""
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "max_location_value_percent <- paste(\"La ubicación con mayor cantidad de robos fue\", \n",
    "                  max_location, \"con\", max_valor_location, \n",
    "                       \"lo que representa:\",max_percent_location, \"del total\")\n",
    "max_location_value_percent"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "b3cab314",
   "metadata": {
    "papermill": {
     "duration": 0.022767,
     "end_time": "2025-07-21T02:26:11.354186",
     "exception": false,
     "start_time": "2025-07-21T02:26:11.331419",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "3. ¿En qué región de Toronto el valor mediano o la mediana de las bicicletas robadas es el más alto? Almacena tus hallazgos como una variable de tipo cadena, region (la región puede ser un nombre real o un código de región, es decir, \"1\", \"2\", \"3\", ...)."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 48,
   "id": "70089c3f",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-07-21T02:26:11.404178Z",
     "iopub.status.busy": "2025-07-21T02:26:11.402563Z",
     "iopub.status.idle": "2025-07-21T02:26:11.441108Z",
     "shell.execute_reply": "2025-07-21T02:26:11.439340Z"
    },
    "papermill": {
     "duration": 0.066614,
     "end_time": "2025-07-21T02:26:11.443480",
     "exception": false,
     "start_time": "2025-07-21T02:26:11.376866",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 6 × 2</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>neighborhood</th><th scope=col>median_robberies</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>Agincourt North (129)             </td><td>349.995</td></tr>\n",
       "\t<tr><td>Agincourt South-Malvern West (128)</td><td>515.000</td></tr>\n",
       "\t<tr><td>Alderwood (20)                    </td><td>800.000</td></tr>\n",
       "\t<tr><td>Annex (95)                        </td><td>700.000</td></tr>\n",
       "\t<tr><td>Banbury-Don Mills (42)            </td><td>500.000</td></tr>\n",
       "\t<tr><td>Bathurst Manor (34)               </td><td>700.000</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 6 × 2\n",
       "\\begin{tabular}{ll}\n",
       " neighborhood & median\\_robberies\\\\\n",
       " <chr> & <dbl>\\\\\n",
       "\\hline\n",
       "\t Agincourt North (129)              & 349.995\\\\\n",
       "\t Agincourt South-Malvern West (128) & 515.000\\\\\n",
       "\t Alderwood (20)                     & 800.000\\\\\n",
       "\t Annex (95)                         & 700.000\\\\\n",
       "\t Banbury-Don Mills (42)             & 500.000\\\\\n",
       "\t Bathurst Manor (34)                & 700.000\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 6 × 2\n",
       "\n",
       "| neighborhood &lt;chr&gt; | median_robberies &lt;dbl&gt; |\n",
       "|---|---|\n",
       "| Agincourt North (129)              | 349.995 |\n",
       "| Agincourt South-Malvern West (128) | 515.000 |\n",
       "| Alderwood (20)                     | 800.000 |\n",
       "| Annex (95)                         | 700.000 |\n",
       "| Banbury-Don Mills (42)             | 500.000 |\n",
       "| Bathurst Manor (34)                | 700.000 |\n",
       "\n"
      ],
      "text/plain": [
       "  neighborhood                       median_robberies\n",
       "1 Agincourt North (129)              349.995         \n",
       "2 Agincourt South-Malvern West (128) 515.000         \n",
       "3 Alderwood (20)                     800.000         \n",
       "4 Annex (95)                         700.000         \n",
       "5 Banbury-Don Mills (42)             500.000         \n",
       "6 Bathurst Manor (34)                700.000         "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "neighborhood_data <- bike_data %>%\n",
    "  group_by(neighborhood\t) %>%\n",
    "  summarize(median_robberies = median(bike_cost, na.rm = TRUE))\n",
    "head(neighborhood_data)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 49,
   "id": "914bc12e",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-07-21T02:26:11.492769Z",
     "iopub.status.busy": "2025-07-21T02:26:11.491200Z",
     "iopub.status.idle": "2025-07-21T02:26:11.506370Z",
     "shell.execute_reply": "2025-07-21T02:26:11.504616Z"
    },
    "papermill": {
     "duration": 0.042601,
     "end_time": "2025-07-21T02:26:11.508870",
     "exception": false,
     "start_time": "2025-07-21T02:26:11.466269",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "max_etiqueta <- neighborhood_data$neighborhood[max_index]\n",
    "max_valor <- neighborhood_data$median_robberies[max_index]"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 50,
   "id": "670053bb",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-07-21T02:26:11.558029Z",
     "iopub.status.busy": "2025-07-21T02:26:11.556408Z",
     "iopub.status.idle": "2025-07-21T02:26:11.576351Z",
     "shell.execute_reply": "2025-07-21T02:26:11.574502Z"
    },
    "papermill": {
     "duration": 0.047271,
     "end_time": "2025-07-21T02:26:11.578695",
     "exception": false,
     "start_time": "2025-07-21T02:26:11.531424",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "'La región con la mediana más alto es con menor número de robos fue: Alderwood (20) con 800'"
      ],
      "text/latex": [
       "'La región con la mediana más alto es con menor número de robos fue: Alderwood (20) con 800'"
      ],
      "text/markdown": [
       "'La región con la mediana más alto es con menor número de robos fue: Alderwood (20) con 800'"
      ],
      "text/plain": [
       "[1] \"La región con la mediana más alto es con menor número de robos fue: Alderwood (20) con 800\""
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "\n",
    "max_value_region <- paste(\"La región con la mediana más alto es con menor número de robos fue:\", \n",
    "                  max_etiqueta, \"con\", max_valor)\n",
    "max_value_region"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "9defe5fc",
   "metadata": {
    "papermill": {
     "duration": 0.023134,
     "end_time": "2025-07-21T02:26:11.625839",
     "exception": false,
     "start_time": "2025-07-21T02:26:11.602705",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**4. ¿Qué curso de acción recomendarías a la estación de policía basándote en tus hallazgos? Almacena tu recomendación como una variable de tipo cadena, action.**"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 51,
   "id": "b7fa9c0e",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-07-21T02:26:11.676091Z",
     "iopub.status.busy": "2025-07-21T02:26:11.674395Z",
     "iopub.status.idle": "2025-07-21T02:26:11.688271Z",
     "shell.execute_reply": "2025-07-21T02:26:11.686488Z"
    },
    "papermill": {
     "duration": 0.042058,
     "end_time": "2025-07-21T02:26:11.691150",
     "exception": false,
     "start_time": "2025-07-21T02:26:11.649092",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "action <- ''"
   ]
  }
 ],
 "metadata": {
  "colab": {
   "provenance": []
  },
  "editor": "DataCamp Workspace",
  "kaggle": {
   "accelerator": "none",
   "dataSources": [
    {
     "datasetId": 7865339,
     "sourceId": 12467442,
     "sourceType": "datasetVersion"
    },
    {
     "datasetId": 7865360,
     "sourceId": 12467471,
     "sourceType": "datasetVersion"
    },
    {
     "datasetId": 7865366,
     "sourceId": 12467481,
     "sourceType": "datasetVersion"
    },
    {
     "datasetId": 7894607,
     "sourceId": 12507980,
     "sourceType": "datasetVersion"
    }
   ],
   "dockerImageVersionId": 30749,
   "isGpuEnabled": false,
   "isInternetEnabled": false,
   "language": "r",
   "sourceType": "notebook"
  },
  "kernelspec": {
   "display_name": "R",
   "language": "R",
   "name": "ir"
  },
  "language_info": {
   "codemirror_mode": "r",
   "file_extension": ".r",
   "mimetype": "text/x-r-source",
   "name": "R",
   "pygments_lexer": "r",
   "version": "4.4.0"
  },
  "papermill": {
   "default_parameters": {},
   "duration": 312.051912,
   "end_time": "2025-07-21T02:26:11.837143",
   "environment_variables": {},
   "exception": null,
   "input_path": "__notebook__.ipynb",
   "output_path": "__notebook__.ipynb",
   "parameters": {},
   "start_time": "2025-07-21T02:20:59.785231",
   "version": "2.6.0"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
