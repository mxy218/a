.class Lcom/meizu/settings/language/FlymeCountryPicker$MyAlphabetIndexerPlus;
.super Lcom/meizu/widget/AlphabetIndexerPlus;
.source "FlymeCountryPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/language/FlymeCountryPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAlphabetIndexerPlus"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/language/FlymeCountryPicker;


# direct methods
.method public constructor <init>(Lcom/meizu/settings/language/FlymeCountryPicker;Ljava/util/List;Ljava/lang/CharSequence;)V
    .registers 4

    .line 482
    iput-object p1, p0, Lcom/meizu/settings/language/FlymeCountryPicker$MyAlphabetIndexerPlus;->this$0:Lcom/meizu/settings/language/FlymeCountryPicker;

    .line 483
    invoke-direct {p0, p2, p3}, Lcom/meizu/widget/AlphabetIndexerPlus;-><init>(Ljava/util/List;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected compare(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    .line 487
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_31

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_31

    .line 489
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-lt p0, v1, :cond_27

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    if-lt p0, v1, :cond_27

    .line 490
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 491
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 490
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 493
    :cond_27
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    sub-int/2addr p0, p1

    return p0

    :cond_31
    const/4 p0, -0x1

    return p0
.end method
