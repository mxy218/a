.class public Lcom/android/settings/development/AppViewHolder;
.super Ljava/lang/Object;
.source "AppViewHolder.java"


# instance fields
.field public appIcon:Landroid/widget/ImageView;

.field public appName:Landroid/widget/TextView;

.field public disabled:Landroid/widget/TextView;

.field public rootView:Landroid/view/View;

.field public summary:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createOrRecycle(Landroid/view/LayoutInflater;Landroid/view/View;)Lcom/android/settings/development/AppViewHolder;
    .registers 3

    if-nez p1, :cond_41

    const p1, 0x7f0d0269

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p0, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    .line 42
    new-instance p1, Lcom/android/settings/development/AppViewHolder;

    invoke-direct {p1}, Lcom/android/settings/development/AppViewHolder;-><init>()V

    .line 43
    iput-object p0, p1, Lcom/android/settings/development/AppViewHolder;->rootView:Landroid/view/View;

    const v0, 0x1020016

    .line 44
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/android/settings/development/AppViewHolder;->appName:Landroid/widget/TextView;

    const v0, 0x1020006

    .line 45
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/android/settings/development/AppViewHolder;->appIcon:Landroid/widget/ImageView;

    const v0, 0x1020010

    .line 46
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/android/settings/development/AppViewHolder;->summary:Landroid/widget/TextView;

    const v0, 0x7f0a00be

    .line 47
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/android/settings/development/AppViewHolder;->disabled:Landroid/widget/TextView;

    .line 48
    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p1

    .line 53
    :cond_41
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/development/AppViewHolder;

    return-object p0
.end method
