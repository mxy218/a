.class public Lcom/meizu/common/widget/CompleteToast;
.super Landroid/widget/Toast;
.source "CompleteToast.java"


# instance fields
.field private mToastImage:Landroid/widget/ImageView;

.field private mToastText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    .line 36
    invoke-direct {p0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/CompleteToast;->init(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/CompleteToast;->init(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private getTextWidth(Landroid/widget/TextView;Ljava/lang/String;)I
    .registers 3

    .line 107
    invoke-virtual {p1}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 109
    invoke-interface {p0, p2, p1}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 111
    :cond_e
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private init(Landroid/content/Context;I)V
    .registers 8

    .line 56
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 57
    sget v1, Lcom/meizu/common/R$layout;->mc_toast_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 58
    sget v3, Lcom/meizu/common/R$id;->toast_text:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/meizu/common/widget/CompleteToast;->mToastText:Landroid/widget/TextView;

    .line 59
    iget-object v3, p0, Lcom/meizu/common/widget/CompleteToast;->mToastText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, p1, v3, v4}, Lcom/meizu/common/widget/CompleteToast;->isLongTextToast(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 61
    sget v1, Lcom/meizu/common/R$layout;->mz_long_text_toast_layout:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 62
    sget v0, Lcom/meizu/common/R$id;->toast_text:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/widget/CompleteToast;->mToastText:Landroid/widget/TextView;

    .line 64
    :cond_37
    sget v0, Lcom/meizu/common/R$id;->toast_complete:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/common/widget/CompleteToast;->mToastImage:Landroid/widget/ImageView;

    .line 65
    invoke-virtual {p0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    const/16 v0, 0x11

    const/4 v1, 0x0

    .line 66
    invoke-virtual {p0, v0, v1, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 67
    iget-object p0, p0, Lcom/meizu/common/widget/CompleteToast;->mToastText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private init(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 42
    sget v1, Lcom/meizu/common/R$layout;->mc_toast_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 43
    sget v3, Lcom/meizu/common/R$id;->toast_text:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/meizu/common/widget/CompleteToast;->mToastText:Landroid/widget/TextView;

    .line 44
    iget-object v3, p0, Lcom/meizu/common/widget/CompleteToast;->mToastText:Landroid/widget/TextView;

    invoke-direct {p0, p1, v3, p2}, Lcom/meizu/common/widget/CompleteToast;->isLongTextToast(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 46
    sget p1, Lcom/meizu/common/R$layout;->mz_long_text_toast_layout:I

    invoke-virtual {v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 47
    sget p1, Lcom/meizu/common/R$id;->toast_text:I

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/meizu/common/widget/CompleteToast;->mToastText:Landroid/widget/TextView;

    .line 49
    :cond_2d
    sget p1, Lcom/meizu/common/R$id;->toast_complete:I

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/meizu/common/widget/CompleteToast;->mToastImage:Landroid/widget/ImageView;

    .line 50
    invoke-virtual {p0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    const/16 p1, 0x11

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p0, p1, v0, v0}, Landroid/widget/Toast;->setGravity(III)V

    .line 52
    iget-object p0, p0, Lcom/meizu/common/widget/CompleteToast;->mToastText:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private isLongTextToast(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;)Z
    .registers 4

    .line 90
    invoke-direct {p0, p2, p3}, Lcom/meizu/common/widget/CompleteToast;->getTextWidth(Landroid/widget/TextView;Ljava/lang/String;)I

    move-result p0

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/meizu/common/R$dimen;->mz_complete_toast_text_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    if-le p0, p1, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public static makeText(Landroid/content/Context;II)Lcom/meizu/common/widget/CompleteToast;
    .registers 4

    .line 121
    new-instance v0, Lcom/meizu/common/widget/CompleteToast;

    invoke-direct {v0, p0, p1}, Lcom/meizu/common/widget/CompleteToast;-><init>(Landroid/content/Context;I)V

    .line 122
    invoke-virtual {v0, p2}, Landroid/widget/Toast;->setDuration(I)V

    return-object v0
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/String;I)Lcom/meizu/common/widget/CompleteToast;
    .registers 4

    .line 115
    new-instance v0, Lcom/meizu/common/widget/CompleteToast;

    invoke-direct {v0, p0, p1}, Lcom/meizu/common/widget/CompleteToast;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0, p2}, Landroid/widget/Toast;->setDuration(I)V

    return-object v0
.end method
