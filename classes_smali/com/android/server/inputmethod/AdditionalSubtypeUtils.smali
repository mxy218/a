.class final Lcom/android/server/inputmethod/AdditionalSubtypeUtils;
.super Ljava/lang/Object;
.source "AdditionalSubtypeUtils.java"


# static fields
.field private static final ADDITIONAL_SUBTYPES_FILE_NAME:Ljava/lang/String; = "subtypes.xml"

.field private static final ATTR_ICON:Ljava/lang/String; = "icon"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_IME_SUBTYPE_EXTRA_VALUE:Ljava/lang/String; = "imeSubtypeExtraValue"

.field private static final ATTR_IME_SUBTYPE_ID:Ljava/lang/String; = "subtypeId"

.field private static final ATTR_IME_SUBTYPE_LANGUAGE_TAG:Ljava/lang/String; = "languageTag"

.field private static final ATTR_IME_SUBTYPE_LOCALE:Ljava/lang/String; = "imeSubtypeLocale"

.field private static final ATTR_IME_SUBTYPE_MODE:Ljava/lang/String; = "imeSubtypeMode"

.field private static final ATTR_IS_ASCII_CAPABLE:Ljava/lang/String; = "isAsciiCapable"

.field private static final ATTR_IS_AUXILIARY:Ljava/lang/String; = "isAuxiliary"

.field private static final ATTR_LABEL:Ljava/lang/String; = "label"

.field private static final INPUT_METHOD_PATH:Ljava/lang/String; = "inputmethod"

.field private static final NODE_IMI:Ljava/lang/String; = "imi"

.field private static final NODE_SUBTYPE:Ljava/lang/String; = "subtype"

.field private static final NODE_SUBTYPES:Ljava/lang/String; = "subtypes"

.field private static final SYSTEM_PATH:Ljava/lang/String; = "system"

.field private static final TAG:Ljava/lang/String; = "AdditionalSubtypeUtils"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method

.method private static getAdditionalSubtypeFile(Ljava/io/File;)Landroid/util/AtomicFile;
    .registers 3

    .line 94
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "subtypes.xml"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 95
    new-instance p0, Landroid/util/AtomicFile;

    const-string v1, "input-subtypes"

    invoke-direct {p0, v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method

.method private static getInputMethodDir(I)Ljava/io/File;
    .registers 3

    .line 80
    if-nez p0, :cond_f

    .line 81
    new-instance p0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "system"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_13

    .line 82
    :cond_f
    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p0

    .line 83
    :goto_13
    new-instance v0, Ljava/io/File;

    const-string v1, "inputmethod"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static load(Landroid/util/ArrayMap;I)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;>;I)V"
        }
    .end annotation

    .line 202
    const-string v0, "1"

    const-string v1, "AdditionalSubtypeUtils"

    invoke-virtual/range {p0 .. p0}, Landroid/util/ArrayMap;->clear()V

    .line 204
    invoke-static/range {p1 .. p1}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->getInputMethodDir(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->getAdditionalSubtypeFile(Ljava/io/File;)Landroid/util/AtomicFile;

    move-result-object v2

    .line 205
    invoke-virtual {v2}, Landroid/util/AtomicFile;->exists()Z

    move-result v3

    if-nez v3, :cond_16

    .line 207
    return-void

    .line 209
    :cond_16
    :try_start_16
    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_1a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16 .. :try_end_1a} :catch_177
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1a} :catch_177
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_1a} :catch_177

    .line 210
    :try_start_1a
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 211
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 212
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 215
    :cond_2a
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .line 216
    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eq v4, v6, :cond_34

    if-ne v4, v5, :cond_2a

    .line 220
    :cond_34
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 221
    const-string/jumbo v7, "subtypes"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15e

    .line 224
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    .line 225
    nop

    .line 226
    const/4 v7, 0x0

    move-object v8, v7

    move-object v9, v8

    .line 227
    :goto_49
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_56

    .line 228
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v11

    if-le v11, v4, :cond_158

    :cond_56
    if-eq v10, v5, :cond_158

    .line 229
    if-eq v10, v6, :cond_61

    .line 230
    move-object/from16 v11, p0

    move/from16 v16, v4

    move-object v6, v7

    goto/16 :goto_147

    .line 232
    :cond_61
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 233
    const-string v11, "imi"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8e

    .line 234
    const-string v8, "id"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 235
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7f

    .line 236
    const-string v10, "Invalid imi id found in subtypes.xml"

    invoke-static {v1, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    goto :goto_49

    .line 239
    :cond_7f
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 240
    move-object/from16 v11, p0

    invoke-virtual {v11, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v16, v4

    move-object v6, v7

    goto/16 :goto_151

    .line 241
    :cond_8e
    move-object/from16 v11, p0

    const-string/jumbo v12, "subtype"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14e

    .line 242
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_12f

    if-nez v9, :cond_a6

    move/from16 v16, v4

    move-object v6, v7

    goto/16 :goto_132

    .line 246
    :cond_a6
    const-string v10, "icon"

    .line 247
    invoke-interface {v3, v7, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 246
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 248
    const-string v12, "label"

    .line 249
    invoke-interface {v3, v7, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 248
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 250
    const-string v13, "imeSubtypeLocale"

    .line 251
    invoke-interface {v3, v7, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 252
    const-string v14, "languageTag"

    .line 253
    invoke-interface {v3, v7, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 254
    const-string v15, "imeSubtypeMode"

    .line 255
    invoke-interface {v3, v7, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 256
    const-string v5, "imeSubtypeExtraValue"

    .line 257
    invoke-interface {v3, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 258
    const-string v6, "isAuxiliary"

    .line 259
    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 258
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 260
    const-string v7, "isAsciiCapable"

    .line 261
    move/from16 v16, v4

    const/4 v4, 0x0

    invoke-interface {v3, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 260
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 263
    new-instance v7, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    invoke-direct {v7}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;-><init>()V

    .line 264
    invoke-virtual {v7, v12}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeNameResId(I)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v7

    .line 265
    invoke-virtual {v7, v10}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeIconResId(I)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v7

    .line 266
    invoke-virtual {v7, v13}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeLocale(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v7

    .line 267
    invoke-virtual {v7, v14}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setLanguageTag(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v7

    .line 268
    invoke-virtual {v7, v15}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeMode(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v7

    .line 269
    invoke-virtual {v7, v5}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeExtraValue(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v5

    .line 270
    invoke-virtual {v5, v6}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setIsAuxiliary(Z)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v5

    .line 271
    invoke-virtual {v5, v4}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setIsAsciiCapable(Z)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v4

    .line 272
    const-string/jumbo v5, "subtypeId"

    .line 273
    const/4 v6, 0x0

    invoke-interface {v3, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 274
    if-eqz v5, :cond_127

    .line 275
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeId(I)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    .line 277
    :cond_127
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->build()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_151

    .line 242
    :cond_12f
    move/from16 v16, v4

    move-object v6, v7

    .line 243
    :goto_132
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IME uninstalled or not valid.: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_146
    .catchall {:try_start_1a .. :try_end_146} :catchall_166

    .line 244
    nop

    .line 227
    :goto_147
    move-object v7, v6

    move/from16 v4, v16

    const/4 v5, 0x1

    const/4 v6, 0x2

    goto/16 :goto_49

    .line 241
    :cond_14e
    move/from16 v16, v4

    move-object v6, v7

    .line 279
    :goto_151
    move-object v7, v6

    move/from16 v4, v16

    const/4 v5, 0x1

    const/4 v6, 0x2

    goto/16 :goto_49

    .line 280
    :cond_158
    if-eqz v2, :cond_15d

    :try_start_15a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_15d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_15a .. :try_end_15d} :catch_177
    .catch Ljava/io/IOException; {:try_start_15a .. :try_end_15d} :catch_177
    .catch Ljava/lang/NumberFormatException; {:try_start_15a .. :try_end_15d} :catch_177

    .line 282
    :cond_15d
    goto :goto_17d

    .line 222
    :cond_15e
    :try_start_15e
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "Xml doesn\'t start with subtypes"

    invoke-direct {v0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_166
    .catchall {:try_start_15e .. :try_end_166} :catchall_166

    .line 209
    :catchall_166
    move-exception v0

    move-object v3, v0

    :try_start_168
    throw v3
    :try_end_169
    .catchall {:try_start_168 .. :try_end_169} :catchall_169

    .line 280
    :catchall_169
    move-exception v0

    move-object v4, v0

    if-eqz v2, :cond_176

    :try_start_16d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_170
    .catchall {:try_start_16d .. :try_end_170} :catchall_171

    goto :goto_176

    :catchall_171
    move-exception v0

    move-object v2, v0

    :try_start_173
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_176
    :goto_176
    throw v4
    :try_end_177
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_173 .. :try_end_177} :catch_177
    .catch Ljava/io/IOException; {:try_start_173 .. :try_end_177} :catch_177
    .catch Ljava/lang/NumberFormatException; {:try_start_173 .. :try_end_177} :catch_177

    :catch_177
    move-exception v0

    .line 281
    const-string v2, "Error reading subtypes"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 283
    :goto_17d
    return-void
.end method

.method static save(Landroid/util/ArrayMap;Landroid/util/ArrayMap;I)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;>;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;I)V"
        }
    .end annotation

    .line 112
    move-object/from16 v0, p1

    const-string/jumbo v1, "subtype"

    const-string v2, "imi"

    const-string/jumbo v3, "subtypes"

    invoke-static/range {p2 .. p2}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->getInputMethodDir(I)Ljava/io/File;

    move-result-object v4

    .line 114
    invoke-virtual/range {p0 .. p0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v5

    const-string v6, "AdditionalSubtypeUtils"

    if-eqz v5, :cond_4c

    .line 115
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 117
    return-void

    .line 119
    :cond_1d
    invoke-static {v4}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->getAdditionalSubtypeFile(Ljava/io/File;)Landroid/util/AtomicFile;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 121
    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    .line 123
    :cond_2a
    invoke-static {v4}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_4b

    .line 124
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to delete the empty parent directory "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_4b
    return-void

    .line 131
    :cond_4c
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_6d

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_6d

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to create a parent directory "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-void

    .line 137
    :cond_6d
    const/4 v7, 0x1

    if-eqz v0, :cond_78

    invoke-virtual/range {p1 .. p1}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-lez v8, :cond_78

    move v8, v7

    goto :goto_79

    :cond_78
    const/4 v8, 0x0

    .line 138
    :goto_79
    nop

    .line 139
    invoke-static {v4}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->getAdditionalSubtypeFile(Ljava/io/File;)Landroid/util/AtomicFile;

    move-result-object v4

    .line 141
    const/4 v9, 0x0

    :try_start_7f
    invoke-virtual {v4}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v10
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_83} :catch_195

    .line 142
    :try_start_83
    new-instance v11, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v11}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 143
    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v12}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v10, v12}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 144
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-interface {v11, v9, v12}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 145
    const-string v12, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v11, v12, v7}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 146
    invoke-interface {v11, v9, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 147
    invoke-virtual/range {p0 .. p0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_a8
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_188

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 148
    if-eqz v8, :cond_d1

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_d1

    .line 149
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "IME uninstalled or not valid.: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    goto :goto_a8

    .line 152
    :cond_d1
    invoke-interface {v11, v9, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 153
    const-string v14, "id"

    invoke-interface {v11, v9, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 154
    move-object/from16 v14, p0

    invoke-virtual {v14, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 155
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v15

    .line 156
    const/4 v5, 0x0

    :goto_e6
    if-ge v5, v15, :cond_17c

    .line 157
    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/inputmethod/InputMethodSubtype;

    .line 158
    invoke-interface {v11, v9, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 159
    invoke-virtual/range {v16 .. v16}, Landroid/view/inputmethod/InputMethodSubtype;->hasSubtypeId()Z

    move-result v17

    if-eqz v17, :cond_109

    .line 160
    const-string/jumbo v7, "subtypeId"

    .line 161
    invoke-virtual/range {v16 .. v16}, Landroid/view/inputmethod/InputMethodSubtype;->getSubtypeId()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 160
    move/from16 v18, v8

    const/4 v8, 0x0

    invoke-interface {v11, v8, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_10b

    .line 159
    :cond_109
    move/from16 v18, v8

    .line 163
    :goto_10b
    const-string v7, "icon"

    invoke-virtual/range {v16 .. v16}, Landroid/view/inputmethod/InputMethodSubtype;->getIconResId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v11, v9, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 164
    const-string v7, "label"

    invoke-virtual/range {v16 .. v16}, Landroid/view/inputmethod/InputMethodSubtype;->getNameResId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v11, v9, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 165
    const-string v7, "imeSubtypeLocale"

    invoke-virtual/range {v16 .. v16}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v11, v9, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 166
    const-string v7, "languageTag"

    .line 167
    invoke-virtual/range {v16 .. v16}, Landroid/view/inputmethod/InputMethodSubtype;->getLanguageTag()Ljava/lang/String;

    move-result-object v8

    .line 166
    invoke-interface {v11, v9, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 168
    const-string v7, "imeSubtypeMode"

    invoke-virtual/range {v16 .. v16}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v11, v9, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 169
    const-string v7, "imeSubtypeExtraValue"

    invoke-virtual/range {v16 .. v16}, Landroid/view/inputmethod/InputMethodSubtype;->getExtraValue()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v11, v9, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 170
    const-string v7, "isAuxiliary"

    .line 171
    invoke-virtual/range {v16 .. v16}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v8

    if-eqz v8, :cond_155

    const/4 v8, 0x1

    goto :goto_156

    :cond_155
    const/4 v8, 0x0

    :goto_156
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 170
    const/4 v9, 0x0

    invoke-interface {v11, v9, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 172
    const-string v7, "isAsciiCapable"

    .line 173
    invoke-virtual/range {v16 .. v16}, Landroid/view/inputmethod/InputMethodSubtype;->isAsciiCapable()Z

    move-result v8

    if-eqz v8, :cond_168

    const/4 v8, 0x1

    goto :goto_169

    :cond_168
    const/4 v8, 0x0

    :goto_169
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 172
    const/4 v9, 0x0

    invoke-interface {v11, v9, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 174
    invoke-interface {v11, v9, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 156
    add-int/lit8 v5, v5, 0x1

    move/from16 v8, v18

    const/4 v7, 0x1

    const/4 v9, 0x0

    goto/16 :goto_e6

    .line 176
    :cond_17c
    move/from16 v18, v8

    const/4 v5, 0x0

    invoke-interface {v11, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 177
    move/from16 v8, v18

    const/4 v7, 0x1

    const/4 v9, 0x0

    goto/16 :goto_a8

    .line 178
    :cond_188
    const/4 v8, 0x0

    invoke-interface {v11, v8, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 179
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 180
    invoke-virtual {v4, v10}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_192
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_192} :catch_193

    .line 186
    goto :goto_1a2

    .line 181
    :catch_193
    move-exception v0

    goto :goto_198

    :catch_195
    move-exception v0

    move-object v8, v9

    move-object v10, v8

    .line 182
    :goto_198
    const-string v1, "Error writing subtypes"

    invoke-static {v6, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 183
    if-eqz v10, :cond_1a2

    .line 184
    invoke-virtual {v4, v10}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 187
    :cond_1a2
    :goto_1a2
    return-void
.end method
