"""
Converts BABY step files to h5m
"""

from cad_to_dagmc import CadToDagmc

my_model = CadToDagmc()

my_model.add_stp_file(
    "baby_assembly.STEP", material_tags=["mat1", "mat2", "mat2", "mat2", "flibe"]
)
my_model.export_dagmc_h5m_file()
