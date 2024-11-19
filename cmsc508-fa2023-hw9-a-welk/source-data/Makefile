.SILENT:


all: WDI_csv.zip WDICountry.csv WDISeries.csv WDIData.csv

clean:
	del *.zip *.csv
	

WDI_csv.zip :
	curl https://databankfiles.worldbank.org/public/ddpext_download/WDI_csv.zip --output $(@)

WDICountry.csv: WDI_csv.zip
	7z x WDI_csv.zip $(@)

WDISeries.csv: WDI_csv.zip
	7z x WDI_csv.zip $(@)

WDIData.csv: WDI_csv.zip
	7z x WDI_csv.zip $(@)

