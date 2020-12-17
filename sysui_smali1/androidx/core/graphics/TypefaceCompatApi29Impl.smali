.class public Landroidx/core/graphics/TypefaceCompatApi29Impl;
.super Landroidx/core/graphics/TypefaceCompatBaseImpl;
.source "TypefaceCompatApi29Impl.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1d
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Landroidx/core/graphics/TypefaceCompatBaseImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromFontFamilyFilesResourceEntry(Landroid/content/Context;Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    .registers 12
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 105
    invoke-virtual {p2}, Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;->getEntries()[Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    move-result-object p0

    array-length p1, p0

    const/4 p2, 0x0

    const/4 v0, 0x0

    move-object v2, p2

    move v1, v0

    :goto_9
    const/4 v3, 0x1

    if-ge v1, p1, :cond_4e

    aget-object v4, p0, v1

    .line 107
    :try_start_e
    new-instance v5, Landroid/graphics/fonts/Font$Builder;

    invoke-virtual {v4}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getResourceId()I

    move-result v6

    invoke-direct {v5, p3, v6}, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/content/res/Resources;I)V

    .line 108
    invoke-virtual {v4}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getWeight()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/fonts/Font$Builder;->setWeight(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v5

    .line 109
    invoke-virtual {v4}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->isItalic()Z

    move-result v6

    if-eqz v6, :cond_26

    goto :goto_27

    :cond_26
    move v3, v0

    :goto_27
    invoke-virtual {v5, v3}, Landroid/graphics/fonts/Font$Builder;->setSlant(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v3

    .line 111
    invoke-virtual {v4}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getTtcIndex()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/fonts/Font$Builder;->setTtcIndex(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v3

    .line 112
    invoke-virtual {v4}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getVariationSettings()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/fonts/Font$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/fonts/Font$Builder;

    move-result-object v3

    .line 113
    invoke-virtual {v3}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    move-result-object v3

    if-nez v2, :cond_48

    .line 115
    new-instance v4, Landroid/graphics/fonts/FontFamily$Builder;

    invoke-direct {v4, v3}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    move-object v2, v4

    goto :goto_4b

    .line 117
    :cond_48
    invoke-virtual {v2, v3}, Landroid/graphics/fonts/FontFamily$Builder;->addFont(Landroid/graphics/fonts/Font;)Landroid/graphics/fonts/FontFamily$Builder;
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_4b} :catch_4b

    :catch_4b
    :goto_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_4e
    if-nez v2, :cond_51

    return-object p2

    .line 126
    :cond_51
    new-instance p0, Landroid/graphics/fonts/FontStyle;

    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_5a

    const/16 p1, 0x2bc

    goto :goto_5c

    :cond_5a
    const/16 p1, 0x190

    :goto_5c
    and-int/lit8 p2, p4, 0x2

    if-eqz p2, :cond_61

    move v0, v3

    :cond_61
    invoke-direct {p0, p1, v0}, Landroid/graphics/fonts/FontStyle;-><init>(II)V

    .line 132
    new-instance p1, Landroid/graphics/Typeface$CustomFallbackBuilder;

    invoke-virtual {v2}, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V

    .line 133
    invoke-virtual {p1, p0}, Landroid/graphics/Typeface$CustomFallbackBuilder;->setStyle(Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    move-result-object p0

    .line 134
    invoke-virtual {p0}, Landroid/graphics/Typeface$CustomFallbackBuilder;->build()Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public createFromFontInfo(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroid/graphics/Typeface;
    .registers 14
    .param p2  # Landroid/os/CancellationSignal;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3  # [Landroidx/core/provider/FontsContractCompat$FontInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 64
    array-length p1, p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v0

    move v2, v1

    :goto_9
    const/4 v4, 0x1

    if-ge v2, p1, :cond_65

    aget-object v5, p3, v2

    .line 65
    :try_start_e
    invoke-virtual {v5}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getUri()Landroid/net/Uri;

    move-result-object v6

    const-string v7, "r"

    invoke-virtual {p0, v6, v7, p2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    if-nez v6, :cond_20

    if-eqz v6, :cond_62

    .line 81
    :goto_1c
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1f} :catch_62

    goto :goto_62

    .line 70
    :cond_20
    :try_start_20
    new-instance v7, Landroid/graphics/fonts/Font$Builder;

    invoke-direct {v7, v6}, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 71
    invoke-virtual {v5}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getWeight()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/fonts/Font$Builder;->setWeight(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v7

    .line 72
    invoke-virtual {v5}, Landroidx/core/provider/FontsContractCompat$FontInfo;->isItalic()Z

    move-result v8

    if-eqz v8, :cond_34

    goto :goto_35

    :cond_34
    move v4, v1

    :goto_35
    invoke-virtual {v7, v4}, Landroid/graphics/fonts/Font$Builder;->setSlant(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v4

    .line 74
    invoke-virtual {v5}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getTtcIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/fonts/Font$Builder;->setTtcIndex(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v4

    .line 75
    invoke-virtual {v4}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    move-result-object v4

    if-nez v3, :cond_4e

    .line 77
    new-instance v5, Landroid/graphics/fonts/FontFamily$Builder;

    invoke-direct {v5, v4}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    move-object v3, v5

    goto :goto_51

    .line 79
    :cond_4e
    invoke-virtual {v3, v4}, Landroid/graphics/fonts/FontFamily$Builder;->addFont(Landroid/graphics/fonts/Font;)Landroid/graphics/fonts/FontFamily$Builder;
    :try_end_51
    .catchall {:try_start_20 .. :try_end_51} :catchall_54

    :goto_51
    if-eqz v6, :cond_62

    goto :goto_1c

    :catchall_54
    move-exception v4

    .line 65
    :try_start_55
    throw v4
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_56

    :catchall_56
    move-exception v5

    if-eqz v6, :cond_61

    .line 81
    :try_start_59
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_5d

    goto :goto_61

    :catchall_5d
    move-exception v6

    :try_start_5e
    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_61
    :goto_61
    throw v5
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_62} :catch_62

    :catch_62
    :cond_62
    :goto_62
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_65
    if-nez v3, :cond_68

    return-object v0

    .line 88
    :cond_68
    new-instance p0, Landroid/graphics/fonts/FontStyle;

    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_71

    const/16 p1, 0x2bc

    goto :goto_73

    :cond_71
    const/16 p1, 0x190

    :goto_73
    and-int/lit8 p2, p4, 0x2

    if-eqz p2, :cond_78

    move v1, v4

    :cond_78
    invoke-direct {p0, p1, v1}, Landroid/graphics/fonts/FontStyle;-><init>(II)V

    .line 94
    new-instance p1, Landroid/graphics/Typeface$CustomFallbackBuilder;

    invoke-virtual {v3}, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V

    .line 95
    invoke-virtual {p1, p0}, Landroid/graphics/Typeface$CustomFallbackBuilder;->setStyle(Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    move-result-object p0

    .line 96
    invoke-virtual {p0}, Landroid/graphics/Typeface$CustomFallbackBuilder;->build()Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method protected createFromInputStream(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Typeface;
    .registers 3

    .line 54
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Do not use this function in API 29 or later."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createFromResourcesFontFile(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .registers 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 146
    :try_start_0
    new-instance p0, Landroid/graphics/fonts/FontFamily$Builder;

    new-instance p1, Landroid/graphics/fonts/Font$Builder;

    invoke-direct {p1, p2, p3}, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/content/res/Resources;I)V

    invoke-virtual {p1}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    invoke-virtual {p0}, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;

    move-result-object p0
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_12} :catch_35

    .line 150
    new-instance p1, Landroid/graphics/fonts/FontStyle;

    and-int/lit8 p2, p5, 0x1

    if-eqz p2, :cond_1b

    const/16 p2, 0x2bc

    goto :goto_1d

    :cond_1b
    const/16 p2, 0x190

    :goto_1d
    and-int/lit8 p3, p5, 0x2

    if-eqz p3, :cond_23

    const/4 p3, 0x1

    goto :goto_24

    :cond_23
    const/4 p3, 0x0

    :goto_24
    invoke-direct {p1, p2, p3}, Landroid/graphics/fonts/FontStyle;-><init>(II)V

    .line 156
    new-instance p2, Landroid/graphics/Typeface$CustomFallbackBuilder;

    invoke-direct {p2, p0}, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V

    invoke-virtual {p2, p1}, Landroid/graphics/Typeface$CustomFallbackBuilder;->setStyle(Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Typeface$CustomFallbackBuilder;->build()Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    :catch_35
    const/4 p0, 0x0

    return-object p0
.end method

.method protected findBestInfo([Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroidx/core/provider/FontsContractCompat$FontInfo;
    .registers 3

    .line 48
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Do not use this function in API 29 or later."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
