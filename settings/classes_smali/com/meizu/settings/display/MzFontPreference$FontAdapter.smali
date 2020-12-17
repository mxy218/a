.class Lcom/meizu/settings/display/MzFontPreference$FontAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MzFontPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/display/MzFontPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FontAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field private mPreference:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;II[Ljava/lang/CharSequence;Landroid/preference/ListPreference;)V
    .registers 6

    .line 75
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 76
    iput-object p5, p0, Lcom/meizu/settings/display/MzFontPreference$FontAdapter;->mPreference:Landroid/preference/ListPreference;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 81
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0a072d

    .line 82
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 85
    :try_start_d
    iget-object p0, p0, Lcom/meizu/settings/display/MzFontPreference$FontAdapter;->mPreference:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object p0

    aget-object p0, p0, p1

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_1d} :catch_1e

    goto :goto_27

    :catch_1e
    const-string p0, "MzFontPreference"

    const-string p1, "get textScale failed"

    .line 87
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 p0, 0x3f800000  # 1.0f

    :goto_27
    const/4 p1, 0x1

    const/high16 v0, 0x41900000  # 18.0f

    mul-float/2addr p0, v0

    .line 89
    invoke-virtual {p3, p1, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 p0, 0x0

    const-string/jumbo p1, "sans-serif-medium"

    .line 90
    invoke-static {p1, p0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    .line 91
    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-object p2
.end method
