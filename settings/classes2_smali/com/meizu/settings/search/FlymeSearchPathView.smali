.class public Lcom/meizu/settings/search/FlymeSearchPathView;
.super Landroid/widget/TextView;
.source "FlymeSearchPathView.java"


# instance fields
.field private mPaths:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 24
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public setPath(Ljava/lang/String;)V
    .registers 10

    const-string v0, "|"

    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_13

    const-string v0, "\\|"

    .line 41
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/search/FlymeSearchPathView;->mPaths:[Ljava/lang/String;

    goto :goto_19

    :cond_13
    new-array v0, v1, [Ljava/lang/String;

    aput-object p1, v0, v2

    .line 43
    iput-object v0, p0, Lcom/meizu/settings/search/FlymeSearchPathView;->mPaths:[Ljava/lang/String;

    .line 47
    :goto_19
    iget-object p1, p0, Lcom/meizu/settings/search/FlymeSearchPathView;->mPaths:[Ljava/lang/String;

    array-length v0, p1

    if-ne v0, v1, :cond_24

    .line 50
    aget-object p1, p1, v2

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_72

    .line 53
    :cond_24
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f0800b7

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 54
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {p1, v2, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sub-int/2addr v0, v1

    :goto_3b
    if-ltz v0, :cond_72

    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/meizu/settings/search/FlymeSearchPathView;->mPaths:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 58
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    if-lez v0, :cond_6c

    .line 60
    new-instance v3, Landroid/text/style/ImageSpan;

    invoke-direct {v3, p1, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 61
    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v5

    sub-int/2addr v5, v1

    .line 62
    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v6

    const/16 v7, 0x11

    .line 61
    invoke-virtual {v4, v3, v5, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 65
    :cond_6c
    invoke-virtual {p0, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_3b

    :cond_72
    :goto_72
    return-void
.end method
