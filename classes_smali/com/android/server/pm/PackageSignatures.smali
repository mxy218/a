.class Lcom/android/server/pm/PackageSignatures;
.super Ljava/lang/Object;
.source "PackageSignatures.java"


# instance fields
.field mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    sget-object v0, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    iput-object v0, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 53
    return-void
.end method

.method constructor <init>(Landroid/content/pm/PackageParser$SigningDetails;)V
    .registers 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 49
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageSignatures;)V
    .registers 4

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    if-eqz p1, :cond_15

    iget-object v0, p1, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    sget-object v1, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    if-eq v0, v1, :cond_15

    .line 41
    new-instance v0, Landroid/content/pm/PackageParser$SigningDetails;

    iget-object p1, p1, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-direct {v0, p1}, Landroid/content/pm/PackageParser$SigningDetails;-><init>(Landroid/content/pm/PackageParser$SigningDetails;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    goto :goto_19

    .line 43
    :cond_15
    sget-object p1, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    iput-object p1, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 45
    :goto_19
    return-void
.end method

.method private readCertsListXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;Ljava/util/ArrayList;IZLandroid/content/pm/PackageParser$SigningDetails$Builder;)I
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/Signature;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/Signature;",
            ">;IZ",
            "Landroid/content/pm/PackageParser$SigningDetails$Builder;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 157
    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p4

    const-string v12, "Error in package manager settings: <cert> index "

    .line 159
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v13

    move-object/from16 v7, p6

    const/4 v15, 0x0

    .line 161
    :goto_11
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2b7

    const/4 v2, 0x3

    if-ne v0, v2, :cond_21

    .line 163
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v13, :cond_2b7

    .line 164
    :cond_21
    if-eq v0, v2, :cond_2b1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_29

    .line 166
    move-object v3, v7

    goto/16 :goto_2b2

    .line 169
    :cond_29
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 170
    const-string v2, "cert"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v6, " is not a number at "

    const/4 v3, 0x0

    const/4 v5, 0x5

    if-eqz v2, :cond_1c1

    .line 171
    if-ge v15, v11, :cond_19a

    .line 172
    const-string v0, "index"

    invoke-interface {v8, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 173
    if-eqz v2, :cond_181

    .line 174
    nop

    .line 176
    :try_start_44
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 177
    const-string v4, "key"

    invoke-interface {v8, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 178
    if-nez v4, :cond_a6

    .line 179
    if-ltz v0, :cond_86

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_86

    .line 180
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/Signature;

    .line 181
    if-eqz v0, :cond_65

    .line 182
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    move v0, v1

    goto :goto_84

    .line 185
    :cond_65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not defined at "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-static {v5, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    const/4 v0, 0x0

    .line 190
    :goto_84
    move v14, v0

    goto :goto_bc

    .line 191
    :cond_86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is out of bounds at "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-static {v5, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    const/4 v14, 0x0

    goto :goto_bc

    .line 199
    :cond_a6
    new-instance v14, Landroid/content/pm/Signature;

    invoke-direct {v14, v4}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    .line 200
    :goto_ab
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v4, v0, :cond_b5

    .line 201
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ab

    .line 203
    :cond_b5
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_bb
    .catch Ljava/lang/NumberFormatException; {:try_start_44 .. :try_end_bb} :catch_e9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_44 .. :try_end_bb} :catch_bd

    .line 205
    move v14, v1

    .line 218
    :goto_bc
    goto :goto_108

    .line 212
    :catch_bd
    move-exception v0

    .line 213
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has an invalid signature at "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 213
    invoke-static {v5, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_107

    .line 207
    :catch_e9
    move-exception v0

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-static {v5, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 218
    nop

    .line 220
    :goto_107
    const/4 v14, 0x0

    :goto_108
    if-eqz p5, :cond_180

    .line 221
    const-string v0, "flags"

    invoke-interface {v8, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 222
    if-eqz v2, :cond_168

    .line 224
    :try_start_112
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 227
    if-eqz v14, :cond_127

    .line 228
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/Signature;

    invoke-virtual {v1, v0}, Landroid/content/pm/Signature;->setFlags(I)V

    goto :goto_167

    .line 230
    :cond_127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error in package manager settings: signature not available at index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to set flags at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 230
    invoke-static {v5, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_147
    .catch Ljava/lang/NumberFormatException; {:try_start_112 .. :try_end_147} :catch_148

    goto :goto_167

    .line 236
    :catch_148
    move-exception v0

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error in package manager settings: <cert> flags "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 237
    invoke-static {v5, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 241
    :goto_167
    goto :goto_180

    .line 243
    :cond_168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error in package manager settings: <cert> has no flags at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 243
    invoke-static {v5, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 248
    :cond_180
    :goto_180
    goto :goto_199

    .line 249
    :cond_181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error in package manager settings: <cert> has no index at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 249
    invoke-static {v5, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 253
    :goto_199
    goto :goto_1ba

    .line 254
    :cond_19a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error in package manager settings: too many <cert> tags, expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 254
    invoke-static {v5, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 259
    :goto_1ba
    add-int/lit8 v15, v15, 0x1

    .line 260
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2ad

    .line 261
    :cond_1c1
    const-string/jumbo v1, "pastSigs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28f

    .line 262
    if-nez p5, :cond_271

    .line 264
    const-string v0, "count"

    invoke-interface {v8, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 265
    if-nez v14, :cond_1f2

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error in package manager settings: <pastSigs> has no count at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 266
    invoke-static {v5, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 269
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 270
    move-object v3, v7

    goto/16 :goto_2b2

    .line 273
    :cond_1f2
    :try_start_1f2
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 274
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_1fb
    .catch Ljava/lang/NumberFormatException; {:try_start_1f2 .. :try_end_1fb} :catch_24b

    .line 275
    const/16 v16, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 p6, v4

    move v8, v5

    move v5, v0

    move-object/from16 v17, v6

    move/from16 v6, v16

    move-object/from16 v16, v7

    :try_start_20d
    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/PackageSignatures;->readCertsListXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;Ljava/util/ArrayList;IZLandroid/content/pm/PackageParser$SigningDetails$Builder;)I

    move-result v1

    .line 278
    nop

    .line 279
    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/content/pm/Signature;

    .line 278
    move-object/from16 v3, p6

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/pm/Signature;
    :try_end_220
    .catch Ljava/lang/NumberFormatException; {:try_start_20d .. :try_end_220} :catch_246

    .line 280
    move-object/from16 v3, v16

    :try_start_222
    invoke-virtual {v3, v2}, Landroid/content/pm/PackageParser$SigningDetails$Builder;->setPastSigningCertificates([Landroid/content/pm/Signature;)Landroid/content/pm/PackageParser$SigningDetails$Builder;

    move-result-object v7
    :try_end_226
    .catch Ljava/lang/NumberFormatException; {:try_start_222 .. :try_end_226} :catch_244

    .line 282
    if-ge v1, v0, :cond_243

    .line 283
    :try_start_228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error in package manager settings: <pastSigs> count does not match number of <cert> entries "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 283
    invoke-static {v8, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_240
    .catch Ljava/lang/NumberFormatException; {:try_start_228 .. :try_end_240} :catch_241

    goto :goto_243

    .line 288
    :catch_241
    move-exception v0

    goto :goto_250

    .line 293
    :cond_243
    :goto_243
    goto :goto_270

    .line 288
    :catch_244
    move-exception v0

    goto :goto_249

    :catch_246
    move-exception v0

    move-object/from16 v3, v16

    :goto_249
    move-object v7, v3

    goto :goto_250

    :catch_24b
    move-exception v0

    move v8, v5

    move-object/from16 v17, v6

    move-object v3, v7

    .line 289
    :goto_250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error in package manager settings: <pastSigs> count "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 289
    invoke-static {v8, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 294
    :goto_270
    goto :goto_2ad

    .line 295
    :cond_271
    move v8, v5

    move-object v3, v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<pastSigs> encountered multiple times under the same <sigs> at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 295
    invoke-static {v8, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 298
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2ac

    .line 301
    :cond_28f
    move v8, v5

    move-object v3, v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown element under <sigs>: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 301
    invoke-static {v8, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 304
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 306
    :goto_2ac
    move-object v7, v3

    :goto_2ad
    move-object/from16 v8, p1

    goto/16 :goto_11

    .line 164
    :cond_2b1
    move-object v3, v7

    .line 161
    :goto_2b2
    move-object/from16 v8, p1

    move-object v7, v3

    goto/16 :goto_11

    .line 307
    :cond_2b7
    return v15
.end method

.method private writeCertsListXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/ArrayList;[Landroid/content/pm/Signature;Z)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/Signature;",
            ">;[",
            "Landroid/content/pm/Signature;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    array-length v2, p3

    if-ge v1, v2, :cond_61

    .line 81
    const-string v2, "cert"

    const/4 v3, 0x0

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 82
    aget-object v4, p3, v1

    .line 83
    invoke-virtual {v4}, Landroid/content/pm/Signature;->hashCode()I

    move-result v5

    .line 84
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 86
    move v7, v0

    :goto_16
    const-string v8, "index"

    if-ge v7, v6, :cond_37

    .line 87
    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/Signature;

    .line 88
    invoke-virtual {v9}, Landroid/content/pm/Signature;->hashCode()I

    move-result v10

    if-ne v10, v5, :cond_34

    invoke-virtual {v9, v4}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_34

    .line 89
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v3, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 90
    goto :goto_37

    .line 86
    :cond_34
    add-int/lit8 v7, v7, 0x1

    goto :goto_16

    .line 93
    :cond_37
    :goto_37
    if-lt v7, v6, :cond_4c

    .line 94
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v3, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 96
    invoke-virtual {v4}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "key"

    invoke-interface {p1, v3, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 100
    :cond_4c
    if-eqz p4, :cond_5b

    .line 101
    invoke-virtual {v4}, Landroid/content/pm/Signature;->getFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "flags"

    invoke-interface {p1, v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 103
    :cond_5b
    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 105
    :cond_61
    return-void
.end method


# virtual methods
.method readXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/Signature;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 109
    new-instance v7, Landroid/content/pm/PackageParser$SigningDetails$Builder;

    invoke-direct {v7}, Landroid/content/pm/PackageParser$SigningDetails$Builder;-><init>()V

    .line 112
    const/4 v0, 0x0

    const-string v1, "count"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    const/4 v8, 0x5

    if-nez v1, :cond_2b

    .line 114
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error in package manager settings: <sigs> has no count at "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 114
    invoke-static {v8, p2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 117
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 118
    return-void

    .line 120
    :cond_2b
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 122
    const-string/jumbo v1, "schemeVersion"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    if-nez v0, :cond_52

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error in package manager settings: <sigs> has no schemeVersion at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-static {v8, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 128
    const/4 v0, 0x0

    goto :goto_56

    .line 130
    :cond_52
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 132
    :goto_56
    invoke-virtual {v7, v0}, Landroid/content/pm/PackageParser$SigningDetails$Builder;->setSignatureSchemeVersion(I)Landroid/content/pm/PackageParser$SigningDetails$Builder;

    .line 133
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 134
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v10

    move v4, v9

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/PackageSignatures;->readCertsListXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;Ljava/util/ArrayList;IZLandroid/content/pm/PackageParser$SigningDetails$Builder;)I

    move-result p2

    .line 135
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/pm/Signature;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/Signature;

    .line 136
    invoke-virtual {v7, v0}, Landroid/content/pm/PackageParser$SigningDetails$Builder;->setSignatures([Landroid/content/pm/Signature;)Landroid/content/pm/PackageParser$SigningDetails$Builder;

    .line 137
    if-ge p2, v9, :cond_92

    .line 138
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error in package manager settings: <sigs> count does not match number of  <cert> entries"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 138
    invoke-static {v8, p1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 144
    :cond_92
    :try_start_92
    invoke-virtual {v7}, Landroid/content/pm/PackageParser$SigningDetails$Builder;->build()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;
    :try_end_98
    .catch Ljava/security/cert/CertificateException; {:try_start_92 .. :try_end_98} :catch_99

    .line 150
    goto :goto_a3

    .line 145
    :catch_99
    move-exception p1

    .line 146
    const-string p1, "Error in package manager settings: <sigs> unable to convert certificate(s) to public key(s)."

    invoke-static {v8, p1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 149
    sget-object p1, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    iput-object p1, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 151
    :goto_a3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 312
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 313
    const-string v1, "PackageSignatures{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 314
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 315
    const-string v1, " version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 316
    iget-object v1, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget v1, v1, Landroid/content/pm/PackageParser$SigningDetails;->signatureSchemeVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 317
    const-string v1, ", signatures:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 318
    iget-object v1, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v1, v1, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    const-string v2, ", "

    const/4 v3, 0x0

    if-eqz v1, :cond_52

    .line 319
    move v1, v3

    :goto_32
    iget-object v4, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v4, v4, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    array-length v4, v4

    if-ge v1, v4, :cond_52

    .line 320
    if-lez v1, :cond_3e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 321
    :cond_3e
    iget-object v4, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v4, v4, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    aget-object v4, v4, v1

    .line 322
    invoke-virtual {v4}, Landroid/content/pm/Signature;->hashCode()I

    move-result v4

    .line 321
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 319
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 325
    :cond_52
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 326
    const-string v1, ", past signatures:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 327
    iget-object v1, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v1, v1, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_99

    .line 328
    nop

    :goto_63
    iget-object v1, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v1, v1, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v1, v1

    if-ge v3, v1, :cond_99

    .line 329
    if-lez v3, :cond_6f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 330
    :cond_6f
    iget-object v1, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v1, v1, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v1, v1, v3

    .line 331
    invoke-virtual {v1}, Landroid/content/pm/Signature;->hashCode()I

    move-result v1

    .line 330
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 332
    const-string v1, " flags: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 333
    iget-object v1, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v1, v1, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v1, v1, v3

    .line 334
    invoke-virtual {v1}, Landroid/content/pm/Signature;->getFlags()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 333
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 328
    add-int/lit8 v3, v3, 0x1

    goto :goto_63

    .line 337
    :cond_99
    const-string v1, "]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 338
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/Signature;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v0, v0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    if-nez v0, :cond_7

    .line 58
    return-void

    .line 60
    :cond_7
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 61
    iget-object v1, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v1, v1, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "count"

    invoke-interface {p1, v0, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 62
    iget-object v1, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget v1, v1, Landroid/content/pm/PackageParser$SigningDetails;->signatureSchemeVersion:I

    .line 63
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 62
    const-string/jumbo v3, "schemeVersion"

    invoke-interface {p1, v0, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 64
    iget-object v1, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v1, v1, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    const/4 v3, 0x0

    invoke-direct {p0, p1, p3, v1, v3}, Lcom/android/server/pm/PackageSignatures;->writeCertsListXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/ArrayList;[Landroid/content/pm/Signature;Z)V

    .line 67
    iget-object v1, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v1, v1, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_52

    .line 68
    const-string/jumbo v1, "pastSigs"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 69
    iget-object v3, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v3, v3, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v3, v3

    .line 70
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 69
    invoke-interface {p1, v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 71
    iget-object v2, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v2, v2, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    const/4 v3, 0x1

    invoke-direct {p0, p1, p3, v2, v3}, Lcom/android/server/pm/PackageSignatures;->writeCertsListXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/ArrayList;[Landroid/content/pm/Signature;Z)V

    .line 73
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 75
    :cond_52
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 76
    return-void
.end method
