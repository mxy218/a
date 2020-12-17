.class public Lcom/android/systemui/bubbles/BubbleIconFactory;
.super Lcom/android/launcher3/icons/BaseIconFactory;
.source "BubbleIconFactory.java"


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->individual_bubble_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 30
    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/icons/BaseIconFactory;-><init>(Landroid/content/Context;II)V

    return-void
.end method


# virtual methods
.method public getBadgeSize()I
    .registers 2

    .line 35
    iget-object p0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/launcher3/icons/R$dimen;->profile_badge_size:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method
