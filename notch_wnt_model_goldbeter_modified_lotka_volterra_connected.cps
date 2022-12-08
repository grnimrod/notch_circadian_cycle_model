<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.36 (Build 260) (http://www.copasi.org) at 2022-11-18T17:12:45Z -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="36" versionDevel="260" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_13" name="Mass action (irreversible)" type="MassAction" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
   <rdf:Description rdf:about="#Function_13">
   <CopasiMT:is rdf:resource="urn:miriam:obo.sbo:SBO:0000163" />
   </rdf:Description>
   </rdf:RDF>
      </MiriamAnnotation>
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
<b>Mass action rate law for irreversible reactions</b>
<p>
Reaction scheme where the products are created from the reactants and the change of a product quantity is proportional to the product of reactant activities. The reaction scheme does not include any reverse process that creates the reactants from the products. The change of a product quantity is proportional to the quantity of one reactant.
</p>
</body>
      </Comment>
      <Expression>
        k1*PRODUCT&lt;substrate_i>
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_80" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_81" name="substrate" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_40" name="Function for Notch_synthesis" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        epsilon*vsN
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_264" name="epsilon" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_263" name="vsN" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="Function for N_degradation" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        epsilon*vdN*N/(KdN+N)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_261" name="KdN" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_262" name="N" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_250" name="epsilon" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_265" name="vdN" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="Function for Notch_activation" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        epsilon*kc*N*KIF^j/(KIF^j+F^j)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_269" name="F" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_268" name="KIF" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_267" name="N" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_266" name="epsilon" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_270" name="j" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_271" name="kc" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="Function for Na_degradation" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        epsilon*VdNa*Na/(KdNa+Na)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_277" name="KdNa" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_276" name="Na" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_275" name="VdNa" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_274" name="epsilon" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="Function for Na_transport" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        epsilon*(kt1*Na-kt2*Nan)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_279" name="Na" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_278" name="Nan" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_272" name="epsilon" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_273" name="kt1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_280" name="kt2" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="Function for Nan_degradation" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        epsilon*VdNan*Nan/(KdNan+Nan)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_285" name="KdNan" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_284" name="Nan" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_283" name="VdNan" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_282" name="epsilon" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="Function for MF_transkription" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        epsilon*vsFK*Nan^p/(KA^p+Nan^p)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_288" name="KA" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_287" name="Nan" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_286" name="epsilon" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_281" name="p" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_289" name="vsFK" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="Function for MF_degradation" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        epsilon*vmF*MF/(KdMF+MF)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_294" name="KdMF" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_293" name="MF" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_292" name="epsilon" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_291" name="vmF" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_48" name="Function for F_translation" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        epsilon*ksF*MF
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_297" name="MF" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_296" name="epsilon" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_295" name="ksF" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_49" name="Function for F_degradation" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        epsilon*vdF*F/(KdF+F)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_299" name="F" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_298" name="KdF" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_290" name="epsilon" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_300" name="vdF" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_50" name="Function for AK_dissoc" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        theta*(d1*AK-a1*A*K)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_304" name="A" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_303" name="AK" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_302" name="K" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_301" name="a1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_305" name="d1" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_306" name="theta" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_51" name="Function for B_synth" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        theta*vsB
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_312" name="theta" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_311" name="vsB" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_52" name="Function for B_degradation" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        theta*kd1*B
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_309" name="B" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_310" name="kd1" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_308" name="theta" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_53" name="Function for B_phosphorylation" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        theta*VMK*KID/(KID+D)*B/(K1+B)*AK/Kt
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_314" name="AK" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_313" name="B" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_307" name="D" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_315" name="K1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_316" name="KID" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_317" name="Kt" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_318" name="VMK" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_319" name="theta" order="7" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_54" name="Function for BP_dephosphorylation" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        theta*VMP*Bp/(K2+Bp)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_327" name="Bp" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_326" name="K2" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_325" name="VMP" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_324" name="theta" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_55" name="Function for B_shuttling" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        theta*(kt4*BN-kt3*B)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_320" name="B" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_321" name="BN" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_322" name="kt3" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_323" name="kt4" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_328" name="theta" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_56" name="Function for Bp_degradation" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        theta*kd2*Bp
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_333" name="Bp" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_332" name="kd2" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_331" name="theta" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_57" name="Function for MAx_trans_basal" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        theta*v0
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_334" name="theta" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_329" name="v0" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_58" name="Function for MAx_trans_BN" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        theta*(vMB*BN^n/(KaB^n+BN^n))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_335" name="BN" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_330" name="KaB" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_336" name="n" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_337" name="theta" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_338" name="vMB" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_59" name="Function for MAx_degradation" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        theta*vmd*MAx/(Kmd+MAx)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_343" name="Kmd" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_342" name="MAx" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_341" name="theta" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_340" name="vmd" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_60" name="Function for A_translation" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        theta*ksAx*MAx
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_346" name="MAx" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_345" name="ksAx" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_344" name="theta" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_61" name="Function for A_degradation" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        theta*vdAx*A/(KdAx+A)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_348" name="A" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_347" name="KdAx" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_339" name="theta" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_349" name="vdAx" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_1" name="Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF" simulationType="time" timeUnit="min" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="nmol" type="deterministic" avogadroConstant="6.0221407599999999e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_1">
    <bqbiol:hasTaxon>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/taxonomy/32524"/>
      </rdf:Bag>
    </bqbiol:hasTaxon>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2008-11-07T15:03:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>c.lloyd@auckland.ac.nz</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Lloyd</vCard:Family>
                <vCard:Given>Catherine</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>University of Auckland</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>lukas@ebi.ac.uk</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Endler</vCard:Family>
                <vCard:Given>Lukas</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>EMBL-EBI</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:creator>
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2013-06-05T17:17:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
    <CopasiMT:hasVersion>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/obo.go/GO:0007219"/>
        <rdf:li rdf:resource="http://identifiers.org/obo.go/GO:0008543"/>
        <rdf:li rdf:resource="http://identifiers.org/obo.go/GO:0016055"/>
      </rdf:Bag>
    </CopasiMT:hasVersion>
    <CopasiMT:hasVersion>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.pathway/ko04010"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.pathway/ko04310"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.pathway/ko04330"/>
      </rdf:Bag>
    </CopasiMT:hasVersion>
    <CopasiMT:hasVersion>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/REACT_11045.1"/>
        <rdf:li rdf:resource="http://identifiers.org/reactome/REACT_299.2"/>
        <rdf:li rdf:resource="http://identifiers.org/reactome/REACT_9470.2"/>
      </rdf:Bag>
    </CopasiMT:hasVersion>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/MODEL6415057828"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/BIOMD0000000201"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isDescribedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pubmed/18308339"/>
      </rdf:Bag>
    </CopasiMT:isDescribedBy>
    <CopasiMT:isPartOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/obo.go/GO:0001756"/>
      </rdf:Bag>
    </CopasiMT:isPartOf>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      <body xmlns="http://www.w3.org/1999/xhtml">
    <p>This is a model of the coupled Natch, Wnt and FGF modules as described in:      <br />
    <b>A. Goldbeter and O. Pourquié</b>
          ,      <em>Modeling the segmentation clock as a network of coupled oscillations in the Notch, Wnt and FGF signaling pathways.</em>
          J Theor Biol. 2008 Jun 7;252(3):574-85, pubmed ID:      <a href="http://www.ncbi.nlm.nih.gov/pubmed/18308339">18308339</a>
    <br />
          To uncouple the modules remove the reaction      <em>MAx_trans_Xa</em>
          and set      <em>vsFK=vsF</em>
          .      <br />
          The SBML version of the model was converted from the CellML      <a href="http://www.cellml.org/models/goldbeter_pourquie_2008_version02">version</a>
          by Catherine Lloyd for the      <a href="http://www.cellml.org/models">CellML repository</a>
          .      </p>
    <br />
    <p>To the extent possible under law, all copyright and related or neighbouring rights to this encoded model have been dedicated to the public domain worldwide. Please refer to      <a href="http://creativecommons.org/publicdomain/zero/1.0/" title="Creative Commons CC0">CC0 Public Domain Dedication</a>
          for more information.      </p>
    <p>In summary, you are entitled to use this encoded model in absolutely any manner you deem suitable, verbatim, or with modification, alone or embedded it in a larger context, redistribute it, commercially or not, in a restricted way or not.</p>
    <br />
    <p>To cite BioModels Database, please use:      <a href="http://www.ncbi.nlm.nih.gov/pubmed/20587024" class="external">Li C, Donizelli M, Rodriguez N, Dharuri H, Endler L, Chelliah V, Li L, He E, Henry A, Stefan MI, Snoep JL, Hucka M, Le Novère N, Laibe C (2010) BioModels Database: An enhanced, curated and annotated resource for published quantitative kinetic models. BMC Syst Biol., 4:92.</a></p>
  </body>
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="cytosol" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_0">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/obo.go/GO:0005829" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="Notch protein" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <CopasiMT:is rdf:resource="urn:miriam:unknown:SBO:0000252" />
    <CopasiMT:isHomologTo>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P46531" />
      </rdf:Bag>
    </CopasiMT:isHomologTo>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/interpro/IPR008297" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="cytosolic NicD" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <CopasiMT:is rdf:resource="urn:miriam:unknown:SBO:0000252" />
    <CopasiMT:isPartOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/interpro/IPR008297" />
      </rdf:Bag>
    </CopasiMT:isPartOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="nuclear NicD" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <CopasiMT:is rdf:resource="urn:miriam:unknown:SBO:0000252" />
    <CopasiMT:isPartOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/interpro/IPR008297" />
      </rdf:Bag>
    </CopasiMT:isPartOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="Lunatic fringe mRNA" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <CopasiMT:encodes>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/interpro/IPR017374" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q8NES3" />
      </rdf:Bag>
    </CopasiMT:encodes>
    <CopasiMT:is rdf:resource="urn:miriam:unknown:SBO:0000250" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:33699" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="Lunatic Fringe protein" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <CopasiMT:is rdf:resource="urn:miriam:unknown:SBO:0000252" />
    <CopasiMT:isHomologTo>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q8NES3" />
      </rdf:Bag>
    </CopasiMT:isHomologTo>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/interpro/IPR017374" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="phosph. beta-catenin" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <CopasiMT:is rdf:resource="urn:miriam:unknown:SBO:0000252" />
    <CopasiMT:isHomologTo>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P35222" />
      </rdf:Bag>
    </CopasiMT:isHomologTo>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/interpro/IPR013284" />
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00562" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="nuclear beta-catenin" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_6">
    <CopasiMT:is rdf:resource="urn:miriam:unknown:SBO:0000252" />
    <CopasiMT:isHomologTo>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P35222" />
      </rdf:Bag>
    </CopasiMT:isHomologTo>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/interpro/IPR013284" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="Axin2 protein" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <CopasiMT:is rdf:resource="urn:miriam:unknown:SBO:0000252" />
    <CopasiMT:isHomologTo>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q9Y2T1" />
      </rdf:Bag>
    </CopasiMT:isHomologTo>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="Gsk3" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_8">
    <CopasiMT:is rdf:resource="urn:miriam:unknown:SBO:0000252" />
    <CopasiMT:isHomologTo>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P49841" />
      </rdf:Bag>
    </CopasiMT:isHomologTo>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="beta-catenin" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_9">
    <CopasiMT:is rdf:resource="urn:miriam:unknown:SBO:0000252" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/interpro/IPR013284" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_10" name="Axin2 mRNA" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_10">
    <CopasiMT:encodes>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q9Y2T1" />
      </rdf:Bag>
    </CopasiMT:encodes>
    <CopasiMT:is rdf:resource="urn:miriam:unknown:SBO:0000250" />
    <CopasiMT:isHomologTo>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ensembl/ENSG00000168646" />
      </rdf:Bag>
    </CopasiMT:isHomologTo>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:33699" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="Dsh protein" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_11">
    <CopasiMT:is rdf:resource="urn:miriam:unknown:SBO:0000252" />
    <CopasiMT:isHomologTo>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O14640" />
      </rdf:Bag>
    </CopasiMT:isHomologTo>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/interpro/IPR003351" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_12" name="Axin2/Gsk3 destruction complex" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_12">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P49841" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q9Y2T1" />
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:is rdf:resource="urn:miriam:unknown:SBO:0000297" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[Kt],Reference=Concentration>-&lt;CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[Gsk3],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="Kt" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_13">
    <CopasiMT:is rdf:resource="urn:miriam:unknown:SBO:0000252" />
    <CopasiMT:isHomologTo>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P49841" />
      </rdf:Bag>
    </CopasiMT:isHomologTo>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_14" name="x1" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_15" name="x2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_16" name="Wnt" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="KdN" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_0">
    <CopasiMT:is rdf:resource="urn:miriam:unknown:SBO:0000027" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          nmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="vsN" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_1">
    <CopasiMT:is rdf:resource="urn:miriam:unknown:SBO:0000048" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          nmol/(l*min)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="vdN" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_2">
    <CopasiMT:is rdf:resource="urn:miriam:unknown:SBO:0000324" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          nmol/(l*min)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="KdNa" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_3">
    <CopasiMT:is rdf:resource="urn:miriam:unknown:SBO:0000027" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          nmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="VdNa" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_4">
    <CopasiMT:is rdf:resource="urn:miriam:unknown:SBO:0000186" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          nmol/(l*min)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="kt1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_5">
    <CopasiMT:is rdf:resource="urn:miriam:unknown:SBO:0000022" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/min
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="kt2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_6">
    <CopasiMT:is rdf:resource="urn:miriam:unknown:SBO:0000032" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/min
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="KdNan" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_7">
    <CopasiMT:is rdf:resource="urn:miriam:unknown:SBO:0000027" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          nmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="VdNan" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_8">
    <CopasiMT:is rdf:resource="urn:miriam:unknown:SBO:0000186" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          nmol/(l*min)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="KdMF" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_9">
    <CopasiMT:is rdf:resource="urn:miriam:unknown:SBO:0000027" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          nmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_10" name="KIG1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Unit>
          nmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_11" name="vsFK" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_11">
    <CopasiMT:is rdf:resource="urn:miriam:unknown:SBO:0000186" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[vsF],Reference=Value>*(&lt;CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[KIG1],Reference=Value>/(&lt;CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[KIG1],Reference=Value>+&lt;CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[Gsk3],Reference=Concentration>))
        </Expression>
        <Unit>
          nmol/(l*min)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_12" name="vsF" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_12">
    <CopasiMT:is rdf:resource="urn:miriam:unknown:SBO:0000186" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          nmol/(l*min)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_13" name="vmF" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_13">
    <CopasiMT:is rdf:resource="urn:miriam:unknown:SBO:0000186" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          nmol/(l*min)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_14" name="KA" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Unit>
          nmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_15" name="KdF" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_15">
    <CopasiMT:is rdf:resource="urn:miriam:unknown:SBO:0000027" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          nmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_16" name="vdF" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_16">
    <CopasiMT:is rdf:resource="urn:miriam:unknown:SBO:0000186" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          nmol/(l*min)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_17" name="ksF" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_17">
    <CopasiMT:is rdf:resource="urn:miriam:unknown:SBO:0000022" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/min
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_18" name="kd1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_18">
    <CopasiMT:is rdf:resource="urn:miriam:unknown:SBO:0000022" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/min
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_19" name="vsB" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_19">
    <CopasiMT:is rdf:resource="urn:miriam:unknown:SBO:0000186" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          nmol/(l*min)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_20" name="kd2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_20">
    <CopasiMT:is rdf:resource="urn:miriam:unknown:SBO:0000022" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/min
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_21" name="v0" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_21">
    <CopasiMT:is rdf:resource="urn:miriam:unknown:SBO:0000186" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          nmol/(l*min)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_22" name="vMB" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_22">
    <CopasiMT:is rdf:resource="urn:miriam:unknown:SBO:0000186" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          nmol/(l*min)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_23" name="vmd" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_23">
    <CopasiMT:is rdf:resource="urn:miriam:unknown:SBO:0000186" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          nmol/(l*min)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_24" name="KaB" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Unit>
          nmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_25" name="Kmd" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Unit>
          nmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_26" name="n" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_26">
    <CopasiMT:is rdf:resource="urn:miriam:unknown:SBO:0000190" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_27" name="m" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_27">
    <CopasiMT:is rdf:resource="urn:miriam:unknown:SBO:0000190" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_28" name="ksAx" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_28">
    <CopasiMT:is rdf:resource="urn:miriam:unknown:SBO:0000022" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/min
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_29" name="d1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_29">
    <CopasiMT:is rdf:resource="urn:miriam:unknown:SBO:0000338" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/min
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_30" name="a1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_30">
    <CopasiMT:is rdf:resource="urn:miriam:unknown:SBO:0000023" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          l/(nmol*min)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_31" name="K1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_31">
    <CopasiMT:is rdf:resource="urn:miriam:unknown:SBO:0000027" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          nmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_32" name="K2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_32">
    <CopasiMT:is rdf:resource="urn:miriam:unknown:SBO:0000027" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          nmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_33" name="kt3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_33">
    <CopasiMT:is rdf:resource="urn:miriam:unknown:SBO:0000022" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/min
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_34" name="kt4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_34">
    <CopasiMT:is rdf:resource="urn:miriam:unknown:SBO:0000032" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/min
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_35" name="KIF" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_35">
    <CopasiMT:is rdf:resource="urn:miriam:unknown:SBO:0000191" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          nmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_36" name="KID" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_36">
    <CopasiMT:is rdf:resource="urn:miriam:unknown:SBO:0000027" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          nmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_37" name="kc" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_37">
    <CopasiMT:is rdf:resource="urn:miriam:unknown:SBO:0000022" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/min
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_38" name="j" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_38">
    <CopasiMT:is rdf:resource="urn:miriam:unknown:SBO:0000191" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_39" name="p" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_39">
    <CopasiMT:is rdf:resource="urn:miriam:unknown:SBO:0000191" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_40" name="epsilon" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_40">
    <CopasiMT:is rdf:resource="urn:miriam:unknown:SBO:0000381" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_41" name="theta" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_41">
    <CopasiMT:is rdf:resource="urn:miriam:unknown:SBO:0000381" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_42" name="VMK" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_42">
    <CopasiMT:is rdf:resource="urn:miriam:unknown:SBO:0000186" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          nmol/(l*min)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_43" name="VMP" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_43">
    <CopasiMT:is rdf:resource="urn:miriam:unknown:SBO:0000186" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          nmol/(l*min)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_44" name="alpha" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_45" name="beta" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_46" name="delta" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_46">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_47" name="gamma" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_47">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="Notch_synthesis" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/obo.go/GO:0010467"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_255" name="epsilon" value="0.0226"/>
          <Constant key="Parameter_256" name="vsN" value="0.23"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="N_degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <CopasiMT:is rdf:resource="urn:miriam:unknown:SBO:0000179" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/obo.go/GO:0030163" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_257" name="KdN" value="1.4"/>
          <Constant key="Parameter_258" name="epsilon" value="0.0226"/>
          <Constant key="Parameter_259" name="vdN" value="2.82"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="Notch_activation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <CopasiMT:is rdf:resource="urn:miriam:unknown:SBO:0000178" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/obo.go/GO:0007220" />
        <rdf:li rdf:resource="http://identifiers.org/reactome/REACT_691.2" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_260" name="KIF" value="0.5"/>
          <Constant key="Parameter_261" name="epsilon" value="0.0226"/>
          <Constant key="Parameter_262" name="j" value="2"/>
          <Constant key="Parameter_263" name="kc" value="3.45"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="ModelValue_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="ModelValue_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_37"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="Na_degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <CopasiMT:is rdf:resource="urn:miriam:unknown:SBO:0000179"/>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/obo.go/GO:0030163"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_264" name="KdNa" value="0.001"/>
          <Constant key="Parameter_265" name="VdNa" value="0.01"/>
          <Constant key="Parameter_266" name="epsilon" value="0.0226"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="Na_transport" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <CopasiMT:is rdf:resource="urn:miriam:unknown:SBO:0000185" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/obo.go/GO:0006913" />
        <rdf:li rdf:resource="http://identifiers.org/reactome/REACT_2155.3" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_267" name="epsilon" value="0.0226"/>
          <Constant key="Parameter_268" name="kt1" value="0.1"/>
          <Constant key="Parameter_269" name="kt2" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="Nan_degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <CopasiMT:is rdf:resource="urn:miriam:unknown:SBO:0000179" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/obo.go/GO:0030163" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_270" name="KdNan" value="0.001"/>
          <Constant key="Parameter_271" name="VdNan" value="0.1"/>
          <Constant key="Parameter_272" name="epsilon" value="0.0226"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default" scalingCompartment="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="MF_transkription" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <CopasiMT:is rdf:resource="urn:miriam:unknown:SBO:0000183" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/obo.go/GO:0009299" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_273" name="KA" value="0.05"/>
          <Constant key="Parameter_274" name="epsilon" value="0.0226"/>
          <Constant key="Parameter_275" name="p" value="2"/>
          <Constant key="Parameter_276" name="vsFK" value="1.36364"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default" scalingCompartment="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="ModelValue_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="MF_degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <CopasiMT:is rdf:resource="urn:miriam:unknown:SBO:0000179" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/obo.go/GO:0006402" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_277" name="KdMF" value="0.768"/>
          <Constant key="Parameter_278" name="epsilon" value="0.0226"/>
          <Constant key="Parameter_279" name="vmF" value="1.92"/>
        </ListOfConstants>
        <KineticLaw function="Function_47" unitType="Default" scalingCompartment="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_294">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="F_translation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <CopasiMT:is rdf:resource="urn:miriam:unknown:SBO:0000184" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/obo.go/GO:0006412" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_280" name="epsilon" value="0.0226"/>
          <Constant key="Parameter_281" name="ksF" value="0.3"/>
        </ListOfConstants>
        <KineticLaw function="Function_48" unitType="Default" scalingCompartment="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_297">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_296">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_295">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="F_degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <CopasiMT:is rdf:resource="urn:miriam:unknown:SBO:0000179" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/obo.go/GO:0030163" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_282" name="KdF" value="0.37"/>
          <Constant key="Parameter_283" name="epsilon" value="0.0226"/>
          <Constant key="Parameter_284" name="vdF" value="0.39"/>
        </ListOfConstants>
        <KineticLaw function="Function_49" unitType="Default" scalingCompartment="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_299">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_298">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_300">
              <SourceParameter reference="ModelValue_16"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="AK_dissoc" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_10">
    <CopasiMT:is rdf:resource="urn:miriam:unknown:SBO:0000180" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/obo.go/GO:0043241" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_285" name="a1" value="1.8"/>
          <Constant key="Parameter_286" name="d1" value="0.1"/>
          <Constant key="Parameter_287" name="theta" value="1.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_50" unitType="Default" scalingCompartment="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_303">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_302">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="ModelValue_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_305">
              <SourceParameter reference="ModelValue_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="ModelValue_41"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="B_synth" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_11">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/obo.go/GO:0010467" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_288" name="theta" value="1.5"/>
          <Constant key="Parameter_289" name="vsB" value="0.087"/>
        </ListOfConstants>
        <KineticLaw function="Function_51" unitType="Default" scalingCompartment="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_312">
              <SourceParameter reference="ModelValue_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_311">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="B_degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_12">
    <CopasiMT:is rdf:resource="urn:miriam:unknown:SBO:0000179" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/obo.go/GO:0030163" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_290" name="kd1" value="0"/>
          <Constant key="Parameter_291" name="theta" value="1.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_52" unitType="Default" scalingCompartment="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_309">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_310">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_308">
              <SourceParameter reference="ModelValue_41"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="B_phosphorylation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_13">
    <CopasiMT:is rdf:resource="urn:miriam:unknown:SBO:0000216" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/obo.go/GO:0006468" />
        <rdf:li rdf:resource="http://identifiers.org/reactome/REACT_11065.1" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_12" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_11" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_292" name="K1" value="0.28"/>
          <Constant key="Parameter_293" name="KID" value="0.5"/>
          <Constant key="Parameter_294" name="VMK" value="5.08"/>
          <Constant key="Parameter_295" name="theta" value="1.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_53" unitType="Default" scalingCompartment="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_314">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_313">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_307">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_315">
              <SourceParameter reference="ModelValue_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="ModelValue_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_317">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_318">
              <SourceParameter reference="ModelValue_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_319">
              <SourceParameter reference="ModelValue_41"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="BP_dephosphorylation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_14">
    <CopasiMT:is rdf:resource="urn:miriam:unknown:SBO:0000330" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/obo.go/GO:0006470" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_296" name="K2" value="0.03"/>
          <Constant key="Parameter_297" name="VMP" value="1"/>
          <Constant key="Parameter_298" name="theta" value="1.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_54" unitType="Default" scalingCompartment="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="ModelValue_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_325">
              <SourceParameter reference="ModelValue_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_324">
              <SourceParameter reference="ModelValue_41"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="B_shuttling" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_15">
    <CopasiMT:is rdf:resource="urn:miriam:unknown:SBO:0000185" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/obo.go/GO:0006913" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_299" name="kt3" value="0.7"/>
          <Constant key="Parameter_300" name="kt4" value="1.5"/>
          <Constant key="Parameter_301" name="theta" value="1.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_320">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_321">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="ModelValue_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_323">
              <SourceParameter reference="ModelValue_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_328">
              <SourceParameter reference="ModelValue_41"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="Bp_degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_16">
    <CopasiMT:is rdf:resource="urn:miriam:unknown:SBO:0000179" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/obo.go/GO:0030163" />
        <rdf:li rdf:resource="http://identifiers.org/reactome/REACT_11063.1" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_302" name="kd2" value="7.062"/>
          <Constant key="Parameter_303" name="theta" value="1.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_56" unitType="Default" scalingCompartment="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_332">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="ModelValue_41"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="MAx_trans_basal" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_17">
    <CopasiMT:is rdf:resource="urn:miriam:unknown:SBO:0000183" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/obo.go/GO:0009299" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_304" name="theta" value="1.5"/>
          <Constant key="Parameter_305" name="v0" value="0.06"/>
        </ListOfConstants>
        <KineticLaw function="Function_57" unitType="Default" scalingCompartment="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_334">
              <SourceParameter reference="ModelValue_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_329">
              <SourceParameter reference="ModelValue_21"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="MAx_trans_BN" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_18">
    <CopasiMT:is rdf:resource="urn:miriam:unknown:SBO:0000183" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/obo.go/GO:0009299" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_306" name="KaB" value="0.7"/>
          <Constant key="Parameter_307" name="n" value="2"/>
          <Constant key="Parameter_308" name="theta" value="1.5"/>
          <Constant key="Parameter_309" name="vMB" value="1.64"/>
        </ListOfConstants>
        <KineticLaw function="Function_58" unitType="Default" scalingCompartment="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_335">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_330">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_336">
              <SourceParameter reference="ModelValue_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="ModelValue_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_338">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_19" name="MAx_degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_19">
    <CopasiMT:is rdf:resource="urn:miriam:unknown:SBO:0000179" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/obo.go/GO:0006402" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_310" name="Kmd" value="0.48"/>
          <Constant key="Parameter_311" name="theta" value="1.5"/>
          <Constant key="Parameter_312" name="vmd" value="0.8"/>
        </ListOfConstants>
        <KineticLaw function="Function_59" unitType="Default" scalingCompartment="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_343">
              <SourceParameter reference="ModelValue_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_342">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_341">
              <SourceParameter reference="ModelValue_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_340">
              <SourceParameter reference="ModelValue_23"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_20" name="A_translation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_20">
    <CopasiMT:is rdf:resource="urn:miriam:unknown:SBO:0000184" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/obo.go/GO:0006412" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_313" name="ksAx" value="0.02"/>
          <Constant key="Parameter_314" name="theta" value="1.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_60" unitType="Default" scalingCompartment="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_346">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_345">
              <SourceParameter reference="ModelValue_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_344">
              <SourceParameter reference="ModelValue_41"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_21" name="A_degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_21">
    <CopasiMT:is rdf:resource="urn:miriam:unknown:SBO:0000179" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/obo.go/GO:0030163" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_315" name="KdAx" value="0.1"/>
          <Constant key="Parameter_316" name="vdAx" value="0.1"/>
          <Constant key="Parameter_317" name="theta" value="1.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_61" unitType="Default" scalingCompartment="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_348">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_347">
              <SourceParameter reference="Parameter_315"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_339">
              <SourceParameter reference="ModelValue_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_349">
              <SourceParameter reference="Parameter_316"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_22" name="LotkaVolterra1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_14" stoichiometry="2"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_318" name="k1" value="0.00323"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_23" name="LotkaVolterra2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_15" stoichiometry="2"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_319" name="k1" value="0.00646"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_14"/>
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_24" name="LotkaVolterra3" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_320" name="k1" value="0.00646"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_25" name="Wnt_synth" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_321" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_321"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_26" name="Wnt_degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_322" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_322"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_27" name="Dsh_synth" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_27">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_323" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_323"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_28" name="Dsh_degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Reaction_28">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_324" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_324"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_1">
      <ModelParameterSet key="ModelParameterSet_1" name="Initial State">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_1">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[Notch protein]" value="301107038000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[cytosolic NicD]" value="120442815199999.92" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[nuclear NicD]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[Lunatic fringe mRNA]" value="60221407599999.961" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[Lunatic Fringe protein]" value="602214076000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[phosph. beta-catenin]" value="60221407599999.961" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[nuclear beta-catenin]" value="602214076000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[Axin2 protein]" value="60221407599999.961" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[Gsk3]" value="1806642228000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[beta-catenin]" value="60221407599999.961" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[Axin2 mRNA]" value="60221407599999.961" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[Dsh protein]" value="1204428152000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[Axin2/Gsk3 destruction complex]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[Kt]" value="1806642228000000" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[x1]" value="602214076000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[x2]" value="602214076000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[Wnt]" value="602214076000000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[KdN]" value="1.3999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[vsN]" value="0.23000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[vdN]" value="2.8199999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[KdNa]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[VdNa]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[kt1]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[kt2]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[KdNan]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[VdNan]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[KdMF]" value="0.76800000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[KIG1]" value="2.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[vsFK]" value="1.3636363636363635" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[vsF]" value="3" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[vmF]" value="1.9199999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[KA]" value="0.050000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[KdF]" value="0.37" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[vdF]" value="0.39000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[ksF]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[kd1]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[vsB]" value="0.086999999999999994" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[kd2]" value="7.0620000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[v0]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[vMB]" value="1.6399999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[vmd]" value="0.80000000000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[KaB]" value="0.69999999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[Kmd]" value="0.47999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[n]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[m]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[ksAx]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[d1]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[a1]" value="1.8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[K1]" value="0.28000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[K2]" value="0.029999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[kt3]" value="0.69999999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[kt4]" value="1.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[KIF]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[KID]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[kc]" value="3.4500000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[j]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[p]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[epsilon]" value="0.022599999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[theta]" value="1.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[VMK]" value="5.0800000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[VMP]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[alpha]" value="0.0032299999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[beta]" value="0.0064599999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[delta]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[gamma]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[Notch_synthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[Notch_synthesis],ParameterGroup=Parameters,Parameter=epsilon" value="0.022599999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[Notch_synthesis],ParameterGroup=Parameters,Parameter=vsN" value="0.23000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[vsN],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[N_degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[N_degradation],ParameterGroup=Parameters,Parameter=KdN" value="1.3999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[KdN],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[N_degradation],ParameterGroup=Parameters,Parameter=epsilon" value="0.022599999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[N_degradation],ParameterGroup=Parameters,Parameter=vdN" value="2.8199999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[vdN],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[Notch_activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[Notch_activation],ParameterGroup=Parameters,Parameter=KIF" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[KIF],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[Notch_activation],ParameterGroup=Parameters,Parameter=epsilon" value="0.022599999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[Notch_activation],ParameterGroup=Parameters,Parameter=j" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[j],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[Notch_activation],ParameterGroup=Parameters,Parameter=kc" value="3.4500000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[kc],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[Na_degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[Na_degradation],ParameterGroup=Parameters,Parameter=KdNa" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[KdNa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[Na_degradation],ParameterGroup=Parameters,Parameter=VdNa" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[VdNa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[Na_degradation],ParameterGroup=Parameters,Parameter=epsilon" value="0.022599999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[Na_transport]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[Na_transport],ParameterGroup=Parameters,Parameter=epsilon" value="0.022599999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[Na_transport],ParameterGroup=Parameters,Parameter=kt1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[kt1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[Na_transport],ParameterGroup=Parameters,Parameter=kt2" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[kt2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[Nan_degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[Nan_degradation],ParameterGroup=Parameters,Parameter=KdNan" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[KdNan],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[Nan_degradation],ParameterGroup=Parameters,Parameter=VdNan" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[VdNan],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[Nan_degradation],ParameterGroup=Parameters,Parameter=epsilon" value="0.022599999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[MF_transkription]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[MF_transkription],ParameterGroup=Parameters,Parameter=KA" value="0.050000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[KA],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[MF_transkription],ParameterGroup=Parameters,Parameter=epsilon" value="0.022599999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[MF_transkription],ParameterGroup=Parameters,Parameter=p" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[p],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[MF_transkription],ParameterGroup=Parameters,Parameter=vsFK" value="1.3636363636363635" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[vsFK],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[MF_degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[MF_degradation],ParameterGroup=Parameters,Parameter=KdMF" value="0.76800000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[KdMF],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[MF_degradation],ParameterGroup=Parameters,Parameter=epsilon" value="0.022599999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[MF_degradation],ParameterGroup=Parameters,Parameter=vmF" value="1.9199999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[vmF],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[F_translation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[F_translation],ParameterGroup=Parameters,Parameter=epsilon" value="0.022599999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[F_translation],ParameterGroup=Parameters,Parameter=ksF" value="0.29999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[ksF],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[F_degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[F_degradation],ParameterGroup=Parameters,Parameter=KdF" value="0.37" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[KdF],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[F_degradation],ParameterGroup=Parameters,Parameter=epsilon" value="0.022599999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[epsilon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[F_degradation],ParameterGroup=Parameters,Parameter=vdF" value="0.39000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[vdF],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[AK_dissoc]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[AK_dissoc],ParameterGroup=Parameters,Parameter=a1" value="1.8" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[a1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[AK_dissoc],ParameterGroup=Parameters,Parameter=d1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[d1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[AK_dissoc],ParameterGroup=Parameters,Parameter=theta" value="1.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[B_synth]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[B_synth],ParameterGroup=Parameters,Parameter=theta" value="1.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[B_synth],ParameterGroup=Parameters,Parameter=vsB" value="0.086999999999999994" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[vsB],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[B_degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[B_degradation],ParameterGroup=Parameters,Parameter=kd1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[kd1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[B_degradation],ParameterGroup=Parameters,Parameter=theta" value="1.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[B_phosphorylation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[B_phosphorylation],ParameterGroup=Parameters,Parameter=K1" value="0.28000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[K1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[B_phosphorylation],ParameterGroup=Parameters,Parameter=KID" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[KID],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[B_phosphorylation],ParameterGroup=Parameters,Parameter=VMK" value="5.0800000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[VMK],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[B_phosphorylation],ParameterGroup=Parameters,Parameter=theta" value="1.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[BP_dephosphorylation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[BP_dephosphorylation],ParameterGroup=Parameters,Parameter=K2" value="0.029999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[K2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[BP_dephosphorylation],ParameterGroup=Parameters,Parameter=VMP" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[VMP],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[BP_dephosphorylation],ParameterGroup=Parameters,Parameter=theta" value="1.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[B_shuttling]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[B_shuttling],ParameterGroup=Parameters,Parameter=kt3" value="0.69999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[kt3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[B_shuttling],ParameterGroup=Parameters,Parameter=kt4" value="1.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[kt4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[B_shuttling],ParameterGroup=Parameters,Parameter=theta" value="1.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[Bp_degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[Bp_degradation],ParameterGroup=Parameters,Parameter=kd2" value="7.0620000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[kd2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[Bp_degradation],ParameterGroup=Parameters,Parameter=theta" value="1.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[MAx_trans_basal]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[MAx_trans_basal],ParameterGroup=Parameters,Parameter=theta" value="1.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[MAx_trans_basal],ParameterGroup=Parameters,Parameter=v0" value="0.059999999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[v0],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[MAx_trans_BN]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[MAx_trans_BN],ParameterGroup=Parameters,Parameter=KaB" value="0.69999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[KaB],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[MAx_trans_BN],ParameterGroup=Parameters,Parameter=n" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[n],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[MAx_trans_BN],ParameterGroup=Parameters,Parameter=theta" value="1.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[MAx_trans_BN],ParameterGroup=Parameters,Parameter=vMB" value="1.6399999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[vMB],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[MAx_degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[MAx_degradation],ParameterGroup=Parameters,Parameter=Kmd" value="0.47999999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[Kmd],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[MAx_degradation],ParameterGroup=Parameters,Parameter=theta" value="1.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[MAx_degradation],ParameterGroup=Parameters,Parameter=vmd" value="0.80000000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[vmd],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[A_translation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[A_translation],ParameterGroup=Parameters,Parameter=ksAx" value="0.02" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[ksAx],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[A_translation],ParameterGroup=Parameters,Parameter=theta" value="1.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[A_degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[A_degradation],ParameterGroup=Parameters,Parameter=KdAx" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[A_degradation],ParameterGroup=Parameters,Parameter=vdAx" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[A_degradation],ParameterGroup=Parameters,Parameter=theta" value="1.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[LotkaVolterra1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[LotkaVolterra1],ParameterGroup=Parameters,Parameter=k1" value="0.0032299999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[alpha],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[LotkaVolterra2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[LotkaVolterra2],ParameterGroup=Parameters,Parameter=k1" value="0.0064599999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[beta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[LotkaVolterra3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[LotkaVolterra3],ParameterGroup=Parameters,Parameter=k1" value="0.0064599999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[beta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[Wnt_synth]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[Wnt_synth],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[Wnt_degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[Wnt_degradation],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[Dsh_synth]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[Dsh_synth],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[Dsh_degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Reactions[Dsh_degradation],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_14"/>
      <StateTemplateVariable objectReference="Metabolite_16"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="ModelValue_11"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
      <StateTemplateVariable objectReference="ModelValue_0"/>
      <StateTemplateVariable objectReference="ModelValue_1"/>
      <StateTemplateVariable objectReference="ModelValue_2"/>
      <StateTemplateVariable objectReference="ModelValue_3"/>
      <StateTemplateVariable objectReference="ModelValue_4"/>
      <StateTemplateVariable objectReference="ModelValue_5"/>
      <StateTemplateVariable objectReference="ModelValue_6"/>
      <StateTemplateVariable objectReference="ModelValue_7"/>
      <StateTemplateVariable objectReference="ModelValue_8"/>
      <StateTemplateVariable objectReference="ModelValue_9"/>
      <StateTemplateVariable objectReference="ModelValue_10"/>
      <StateTemplateVariable objectReference="ModelValue_12"/>
      <StateTemplateVariable objectReference="ModelValue_13"/>
      <StateTemplateVariable objectReference="ModelValue_14"/>
      <StateTemplateVariable objectReference="ModelValue_15"/>
      <StateTemplateVariable objectReference="ModelValue_16"/>
      <StateTemplateVariable objectReference="ModelValue_17"/>
      <StateTemplateVariable objectReference="ModelValue_18"/>
      <StateTemplateVariable objectReference="ModelValue_19"/>
      <StateTemplateVariable objectReference="ModelValue_20"/>
      <StateTemplateVariable objectReference="ModelValue_21"/>
      <StateTemplateVariable objectReference="ModelValue_22"/>
      <StateTemplateVariable objectReference="ModelValue_23"/>
      <StateTemplateVariable objectReference="ModelValue_24"/>
      <StateTemplateVariable objectReference="ModelValue_25"/>
      <StateTemplateVariable objectReference="ModelValue_26"/>
      <StateTemplateVariable objectReference="ModelValue_27"/>
      <StateTemplateVariable objectReference="ModelValue_28"/>
      <StateTemplateVariable objectReference="ModelValue_29"/>
      <StateTemplateVariable objectReference="ModelValue_30"/>
      <StateTemplateVariable objectReference="ModelValue_31"/>
      <StateTemplateVariable objectReference="ModelValue_32"/>
      <StateTemplateVariable objectReference="ModelValue_33"/>
      <StateTemplateVariable objectReference="ModelValue_34"/>
      <StateTemplateVariable objectReference="ModelValue_35"/>
      <StateTemplateVariable objectReference="ModelValue_36"/>
      <StateTemplateVariable objectReference="ModelValue_37"/>
      <StateTemplateVariable objectReference="ModelValue_38"/>
      <StateTemplateVariable objectReference="ModelValue_39"/>
      <StateTemplateVariable objectReference="ModelValue_40"/>
      <StateTemplateVariable objectReference="ModelValue_41"/>
      <StateTemplateVariable objectReference="ModelValue_42"/>
      <StateTemplateVariable objectReference="ModelValue_43"/>
      <StateTemplateVariable objectReference="ModelValue_44"/>
      <StateTemplateVariable objectReference="ModelValue_45"/>
      <StateTemplateVariable objectReference="ModelValue_46"/>
      <StateTemplateVariable objectReference="ModelValue_47"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 60221407599999.961 120442815199999.92 60221407599999.961 60221407599999.961 301107038000000 60221407599999.961 602214076000 60221407599999.961 1204428152000000 602214076000000 602214076000000 0 602214076000000 602214076000 1806642228000000 0 1.3636363636363635 1806642228000000 1 1.3999999999999999 0.23000000000000001 2.8199999999999998 0.001 0.01 0.10000000000000001 0.10000000000000001 0.001 0.10000000000000001 0.76800000000000002 2.5 3 1.9199999999999999 0.050000000000000003 0.37 0.39000000000000001 0.29999999999999999 0 0.086999999999999994 7.0620000000000003 0.059999999999999998 1.6399999999999999 0.80000000000000004 0.69999999999999996 0.47999999999999998 2 2 0.02 0.10000000000000001 1.8 0.28000000000000003 0.029999999999999999 0.69999999999999996 1.5 0.5 0.5 3.4500000000000002 2 2 0.022599999999999999 1.5 5.0800000000000001 1 0.0032299999999999998 0.0064599999999999996 0 0 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_17" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_11" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="JacobianRequested" type="bool" value="1"/>
        <Parameter name="StabilityAnalysisRequested" type="bool" value="1"/>
      </Problem>
      <Method name="Enhanced Newton" type="EnhancedNewton">
        <Parameter name="Resolution" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Derivation Factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Use Newton" type="bool" value="1"/>
        <Parameter name="Use Integration" type="bool" value="1"/>
        <Parameter name="Use Back Integration" type="bool" value="0"/>
        <Parameter name="Accept Negative Concentrations" type="bool" value="0"/>
        <Parameter name="Iteration Limit" type="unsignedInteger" value="50"/>
        <Parameter name="Maximum duration for forward integration" type="unsignedFloat" value="1000000000"/>
        <Parameter name="Maximum duration for backward integration" type="unsignedFloat" value="1000000"/>
        <Parameter name="Target Criterion" type="string" value="Distance and Rate"/>
      </Method>
    </Task>
    <Task key="Task_18" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Report reference="Report_12" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="1000"/>
        <Parameter name="StepSize" type="float" value="6"/>
        <Parameter name="Duration" type="float" value="6000"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="100000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_19" name="Scan" type="scan" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="1"/>
        <ParameterGroup name="ScanItems">
        </ParameterGroup>
        <Parameter name="Output in subtask" type="bool" value="1"/>
        <Parameter name="Adjust initial conditions" type="bool" value="0"/>
        <Parameter name="Continue on Error" type="bool" value="0"/>
      </Problem>
      <Method name="Scan Framework" type="ScanFramework">
      </Method>
    </Task>
    <Task key="Task_20" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_13" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_21" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_14" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Subtask" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <ParameterText name="ObjectiveExpression" type="expression">
          
        </ParameterText>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
      </Problem>
      <Method name="Random Search" type="RandomSearch">
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
        <Parameter name="Number of Iterations" type="unsignedInteger" value="100000"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_22" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_15" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
        <Parameter name="Steady-State" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <Parameter name="Time-Course" type="cn" value="CN=Root,Vector=TaskList[Time-Course]"/>
        <Parameter name="Create Parameter Sets" type="bool" value="0"/>
        <Parameter name="Use Time Sens" type="bool" value="0"/>
        <Parameter name="Time-Sens" type="cn" value=""/>
        <ParameterGroup name="Experiment Set">
        </ParameterGroup>
        <ParameterGroup name="Validation Set">
          <Parameter name="Weight" type="unsignedFloat" value="1"/>
          <Parameter name="Threshold" type="unsignedInteger" value="5"/>
        </ParameterGroup>
      </Problem>
      <Method name="Evolutionary Programming" type="EvolutionaryProgram">
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
        <Parameter name="Number of Generations" type="unsignedInteger" value="200"/>
        <Parameter name="Population Size" type="unsignedInteger" value="20"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
        <Parameter name="Stop after # Stalled Generations" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_23" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_16" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_17"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_24" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_17" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="ExponentNumber" type="unsignedInteger" value="3"/>
        <Parameter name="DivergenceRequested" type="bool" value="1"/>
        <Parameter name="TransientTime" type="float" value="0"/>
      </Problem>
      <Method name="Wolf Method" type="WolfMethod">
        <Parameter name="Orthonormalization Interval" type="unsignedFloat" value="1"/>
        <Parameter name="Overall time" type="unsignedFloat" value="1000"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_25" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_18" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
      </Problem>
      <Method name="ILDM (LSODA,Deuflhard)" type="TimeScaleSeparation(ILDM,Deuflhard)">
        <Parameter name="Deuflhard Tolerance" type="unsignedFloat" value="0.0001"/>
      </Method>
    </Task>
    <Task key="Task_26" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_19" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="SubtaskType" type="unsignedInteger" value="1"/>
        <ParameterGroup name="TargetFunctions">
          <Parameter name="SingleObject" type="cn" value=""/>
          <Parameter name="ObjectListType" type="unsignedInteger" value="7"/>
        </ParameterGroup>
        <ParameterGroup name="ListOfVariables">
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="41"/>
          </ParameterGroup>
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="0"/>
          </ParameterGroup>
        </ParameterGroup>
      </Problem>
      <Method name="Sensitivities Method" type="SensitivitiesMethod">
        <Parameter name="Delta factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Delta minimum" type="unsignedFloat" value="9.9999999999999998e-13"/>
      </Method>
    </Task>
    <Task key="Task_27" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Report reference="Report_20" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_28" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
        <Parameter name="LimitCrossings" type="bool" value="0"/>
        <Parameter name="NumCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitOutTime" type="bool" value="0"/>
        <Parameter name="LimitOutCrossings" type="bool" value="0"/>
        <Parameter name="PositiveDirection" type="bool" value="1"/>
        <Parameter name="NumOutCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitUntilConvergence" type="bool" value="0"/>
        <Parameter name="ConvergenceTolerance" type="float" value="9.9999999999999995e-07"/>
        <Parameter name="Threshold" type="float" value="0"/>
        <Parameter name="DelayOutputUntilConvergence" type="bool" value="0"/>
        <Parameter name="OutputConvergenceTolerance" type="float" value="9.9999999999999995e-07"/>
        <ParameterText name="TriggerExpression" type="expression">
          
        </ParameterText>
        <Parameter name="SingleVariable" type="cn" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="100000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_29" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_21" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_17"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
    <Task key="Task_30" name="Time-Course Sensitivities" type="timeSensitivities" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
        <ParameterGroup name="ListOfParameters">
        </ParameterGroup>
        <ParameterGroup name="ListOfTargets">
        </ParameterGroup>
      </Problem>
      <Method name="LSODA Sensitivities" type="Sensitivities(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
  </ListOfTasks>
  <ListOfReports>
    <Report key="Report_11" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_12" name="Time-Course" taskType="timeCourse" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time-Course],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Time-Course],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_13" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_14" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_15" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_16" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_17" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_18" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_19" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_20" name="Moieties" taskType="moieties" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Moieties],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Moieties],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_21" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Result"/>
      </Footer>
    </Report>
  </ListOfReports>
  <ListOfPlots>
    <PlotSpecification name="Concentrations, Volumes, and Global Quantity Values" type="Plot2D" active="0" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[Notch protein]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[Notch protein],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[cytosolic NicD]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[cytosolic NicD],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[nuclear NicD]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[nuclear NicD],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Lunatic fringe mRNA]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[Lunatic fringe mRNA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Lunatic Fringe protein]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[Lunatic Fringe protein],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[phosph. beta-catenin]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[phosph. beta-catenin],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[nuclear beta-catenin]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[nuclear beta-catenin],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Axin2 protein]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[Axin2 protein],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Gsk3]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[Gsk3],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[beta-catenin]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[beta-catenin],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Axin2 mRNA]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[Axin2 mRNA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[active Ras]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[active Ras],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[active ERK]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[active ERK],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[active TF X]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[active TF X],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Dusp6 mRNA]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[Dusp6 mRNA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Dusp6 protein]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[Dusp6 protein],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[inactive Ras]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[inactive Ras],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[inactive ERK]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[inactive ERK],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[inactive TF X]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[inactive TF X],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Ras total]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[Ras total],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[ERK total]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[ERK total],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[X total]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[X total],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Dsh protein]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[Dsh protein],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Axin2/Gsk3 destruction complex]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[Axin2/Gsk3 destruction complex],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[vsFK]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[vsFK],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Concentrations, Volumes, and Global Quantity Values 1" type="Plot2D" active="0" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[Notch protein]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[Notch protein],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[cytosolic NicD]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[cytosolic NicD],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[nuclear NicD]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[nuclear NicD],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Lunatic fringe mRNA]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[Lunatic fringe mRNA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Lunatic Fringe protein]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[Lunatic Fringe protein],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[phosph. beta-catenin]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[phosph. beta-catenin],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[nuclear beta-catenin]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[nuclear beta-catenin],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Axin2 protein]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[Axin2 protein],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Gsk3]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[Gsk3],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[beta-catenin]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[beta-catenin],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Axin2 mRNA]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[Axin2 mRNA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Dsh protein]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[Dsh protein],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Axin2/Gsk3 destruction complex]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[Axin2/Gsk3 destruction complex],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[vsFK]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[vsFK],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Concentrations, Volumes, and Global Quantity Values 2" type="Plot2D" active="0" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[Notch protein]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[Notch protein],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[cytosolic NicD]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[cytosolic NicD],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[nuclear NicD]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[nuclear NicD],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Lunatic fringe mRNA]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[Lunatic fringe mRNA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Lunatic Fringe protein]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[Lunatic Fringe protein],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[phosph. beta-catenin]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[phosph. beta-catenin],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[nuclear beta-catenin]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[nuclear beta-catenin],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Axin2 protein]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[Axin2 protein],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Gsk3]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[Gsk3],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[beta-catenin]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[beta-catenin],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Axin2 mRNA]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[Axin2 mRNA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Dsh protein]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[Dsh protein],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Axin2/Gsk3 destruction complex]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[Axin2/Gsk3 destruction complex],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[x1]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[x1],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[x2]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[x2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[vsFK]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[vsFK],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Concentrations, Volumes, and Global Quantity Values 3" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[Notch protein]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[Notch protein],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[cytosolic NicD]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[cytosolic NicD],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[nuclear NicD]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[nuclear NicD],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Lunatic fringe mRNA]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[Lunatic fringe mRNA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Lunatic Fringe protein]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[Lunatic Fringe protein],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[phosph. beta-catenin]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[phosph. beta-catenin],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[nuclear beta-catenin]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[nuclear beta-catenin],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Axin2 protein]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[Axin2 protein],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Gsk3]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[Gsk3],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[beta-catenin]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[beta-catenin],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Axin2 mRNA]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[Axin2 mRNA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Dsh protein]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[Dsh protein],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Axin2/Gsk3 destruction complex]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[Axin2/Gsk3 destruction complex],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[x1]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[x1],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[x2]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[x2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Wnt]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Compartments[cytosol],Vector=Metabolites[Wnt],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[vsFK]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Goldbeter2008_Somite_Segmentation_Clock_Notch_Wnt_FGF,Vector=Values[vsFK],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="BIOMD0000000201_url.xml">
    <SBMLMap SBMLid="A" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="AK" COPASIkey="Metabolite_12"/>
    <SBMLMap SBMLid="AK_dissoc" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="A_degradation" COPASIkey="Reaction_21"/>
    <SBMLMap SBMLid="A_translation" COPASIkey="Reaction_20"/>
    <SBMLMap SBMLid="B" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="BN" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="BP_dephosphorylation" COPASIkey="Reaction_14"/>
    <SBMLMap SBMLid="B_degradation" COPASIkey="Reaction_12"/>
    <SBMLMap SBMLid="B_phosphorylation" COPASIkey="Reaction_13"/>
    <SBMLMap SBMLid="B_shuttling" COPASIkey="Reaction_15"/>
    <SBMLMap SBMLid="B_synth" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="Bp" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="Bp_degradation" COPASIkey="Reaction_16"/>
    <SBMLMap SBMLid="D" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="F" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="F_degradation" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="F_translation" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="K" COPASIkey="Metabolite_8"/>
    <SBMLMap SBMLid="K1" COPASIkey="ModelValue_31"/>
    <SBMLMap SBMLid="K2" COPASIkey="ModelValue_32"/>
    <SBMLMap SBMLid="KA" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="KID" COPASIkey="ModelValue_36"/>
    <SBMLMap SBMLid="KIF" COPASIkey="ModelValue_35"/>
    <SBMLMap SBMLid="KIG1" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="KaB" COPASIkey="ModelValue_24"/>
    <SBMLMap SBMLid="KdF" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="KdMF" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="KdN" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="KdNa" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="KdNan" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="Kmd" COPASIkey="ModelValue_25"/>
    <SBMLMap SBMLid="Kt" COPASIkey="Metabolite_13"/>
    <SBMLMap SBMLid="MAx" COPASIkey="Metabolite_10"/>
    <SBMLMap SBMLid="MAx_degradation" COPASIkey="Reaction_19"/>
    <SBMLMap SBMLid="MAx_trans_BN" COPASIkey="Reaction_18"/>
    <SBMLMap SBMLid="MAx_trans_basal" COPASIkey="Reaction_17"/>
    <SBMLMap SBMLid="MF" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="MF_degradation" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="MF_transkription" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="N" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="N_activation" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="N_degradation" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="Na" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="Na_degradation" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="Na_transport" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="Nan" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="Nan_degradation" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="VMK" COPASIkey="ModelValue_42"/>
    <SBMLMap SBMLid="VMP" COPASIkey="ModelValue_43"/>
    <SBMLMap SBMLid="VdNa" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="VdNan" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="a1" COPASIkey="ModelValue_30"/>
    <SBMLMap SBMLid="cytosol" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="d1" COPASIkey="ModelValue_29"/>
    <SBMLMap SBMLid="epsilon" COPASIkey="ModelValue_40"/>
    <SBMLMap SBMLid="j" COPASIkey="ModelValue_38"/>
    <SBMLMap SBMLid="kc" COPASIkey="ModelValue_37"/>
    <SBMLMap SBMLid="kd1" COPASIkey="ModelValue_18"/>
    <SBMLMap SBMLid="kd2" COPASIkey="ModelValue_20"/>
    <SBMLMap SBMLid="ksAx" COPASIkey="ModelValue_28"/>
    <SBMLMap SBMLid="ksF" COPASIkey="ModelValue_17"/>
    <SBMLMap SBMLid="kt1" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="kt2" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="kt3" COPASIkey="ModelValue_33"/>
    <SBMLMap SBMLid="kt4" COPASIkey="ModelValue_34"/>
    <SBMLMap SBMLid="m" COPASIkey="ModelValue_27"/>
    <SBMLMap SBMLid="n" COPASIkey="ModelValue_26"/>
    <SBMLMap SBMLid="n_synth" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="p" COPASIkey="ModelValue_39"/>
    <SBMLMap SBMLid="theta" COPASIkey="ModelValue_41"/>
    <SBMLMap SBMLid="v0" COPASIkey="ModelValue_21"/>
    <SBMLMap SBMLid="vMB" COPASIkey="ModelValue_22"/>
    <SBMLMap SBMLid="vdF" COPASIkey="ModelValue_16"/>
    <SBMLMap SBMLid="vdN" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="vmF" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="vmd" COPASIkey="ModelValue_23"/>
    <SBMLMap SBMLid="vsB" COPASIkey="ModelValue_19"/>
    <SBMLMap SBMLid="vsF" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="vsFK" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="vsN" COPASIkey="ModelValue_1"/>
  </SBMLReference>
  <ListOfUnitDefinitions>
    <UnitDefinition key="Unit_1" name="meter" symbol="m">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_0">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        m
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_5" name="second" symbol="s">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_4">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        s
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_13" name="Avogadro" symbol="Avogadro">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_12">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Avogadro
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_15" name="dimensionless" symbol="1">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_14">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        1
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_17" name="item" symbol="#">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_16">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        #
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_35" name="liter" symbol="l">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_34">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        0.001*m^3
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_41" name="mole" symbol="mol">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_40">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Avogadro*#
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_65" name="minute" symbol="min">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_64">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        60*s
      </Expression>
    </UnitDefinition>
  </ListOfUnitDefinitions>
</COPASI>
