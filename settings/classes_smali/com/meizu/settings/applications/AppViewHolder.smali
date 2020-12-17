.class public Lcom/meizu/settings/applications/AppViewHolder;
.super Ljava/lang/Object;
.source "AppViewHolder.java"


# instance fields
.field public animCheckBox:Lcom/meizu/common/widget/AnimCheckBox;

.field public appBadgeIcon:Landroid/widget/ImageView;

.field public appIcon:Landroid/widget/ImageView;

.field public appIconPicker:Landroid/widget/ImageView;

.field public appInstalling:Landroid/widget/TextView;

.field public appName:Landroid/widget/TextView;

.field public appSize:Landroid/widget/TextView;

.field public bottom_layout:Landroid/view/View;

.field public checkBox:Landroid/widget/CheckBox;

.field public disabled:Landroid/widget/TextView;

.field public divider:Landroid/view/View;

.field public entry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

.field public installApp:Landroid/widget/Button;

.field public nextIcon:Landroid/widget/ImageView;

.field public rootView:Landroid/view/View;

.field public selection:Landroid/widget/ImageView;

.field public systemFlag:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createOrRecycle(Landroid/view/LayoutInflater;Landroid/view/View;)Lcom/meizu/settings/applications/AppViewHolder;
    .registers 4

    if-nez p1, :cond_c1

    const p1, 0x7f0d0132

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p0, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    .line 49
    new-instance p1, Lcom/meizu/settings/applications/AppViewHolder;

    invoke-direct {p1}, Lcom/meizu/settings/applications/AppViewHolder;-><init>()V

    .line 50
    iput-object p0, p1, Lcom/meizu/settings/applications/AppViewHolder;->rootView:Landroid/view/View;

    const v0, 0x7f0a0229

    .line 51
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/meizu/settings/applications/AppViewHolder;->divider:Landroid/view/View;

    const v0, 0x7f0a037f

    .line 52
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/meizu/settings/applications/AppViewHolder;->bottom_layout:Landroid/view/View;

    const v0, 0x7f0a00aa

    .line 53
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/meizu/settings/applications/AppViewHolder;->appIconPicker:Landroid/widget/ImageView;

    const v0, 0x7f0a00ad

    .line 54
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/meizu/settings/applications/AppViewHolder;->appName:Landroid/widget/TextView;

    const v0, 0x7f0a00a8

    .line 55
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/meizu/settings/applications/AppViewHolder;->appIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a00b5

    .line 56
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/meizu/settings/applications/AppViewHolder;->appSize:Landroid/widget/TextView;

    const v0, 0x7f0a00a5

    .line 57
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/meizu/settings/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    const v0, 0x7f0a00af

    .line 58
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/meizu/settings/applications/AppViewHolder;->checkBox:Landroid/widget/CheckBox;

    const v0, 0x7f0a0381

    .line 59
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/meizu/settings/applications/AppViewHolder;->selection:Landroid/widget/ImageView;

    const v0, 0x7f0a070f

    .line 61
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/meizu/settings/applications/AppViewHolder;->systemFlag:Landroid/widget/TextView;

    const v0, 0x7f0a04dc

    .line 62
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/meizu/settings/applications/AppViewHolder;->nextIcon:Landroid/widget/ImageView;

    const v0, 0x1020001

    .line 63
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/AnimCheckBox;

    iput-object v0, p1, Lcom/meizu/settings/applications/AppViewHolder;->animCheckBox:Lcom/meizu/common/widget/AnimCheckBox;

    const v0, 0x7f0a00a9

    .line 66
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/meizu/settings/applications/AppViewHolder;->appBadgeIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a0367

    .line 70
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/meizu/settings/applications/AppViewHolder;->installApp:Landroid/widget/Button;

    .line 71
    iget-object v0, p1, Lcom/meizu/settings/applications/AppViewHolder;->installApp:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 72
    iget-object v0, p1, Lcom/meizu/settings/applications/AppViewHolder;->installApp:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    const v0, 0x7f0a00ab

    .line 73
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/meizu/settings/applications/AppViewHolder;->appInstalling:Landroid/widget/TextView;

    .line 74
    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p1

    .line 79
    :cond_c1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/meizu/settings/applications/AppViewHolder;

    return-object p0
.end method


# virtual methods
.method updateSizeText(Ljava/lang/CharSequence;I)V
    .registers 9

    .line 87
    iget-object v0, p0, Lcom/meizu/settings/applications/AppViewHolder;->entry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->sizeStr:Ljava/lang/String;

    if-eqz v1, :cond_22

    const/4 p1, 0x1

    if-eq p2, p1, :cond_1a

    const/4 p1, 0x2

    if-eq p2, p1, :cond_12

    .line 96
    iget-object p0, p0, Lcom/meizu/settings/applications/AppViewHolder;->appSize:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3b

    .line 93
    :cond_12
    iget-object p0, p0, Lcom/meizu/settings/applications/AppViewHolder;->appSize:Landroid/widget/TextView;

    iget-object p1, v0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->externalSizeStr:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3b

    .line 90
    :cond_1a
    iget-object p0, p0, Lcom/meizu/settings/applications/AppViewHolder;->appSize:Landroid/widget/TextView;

    iget-object p1, v0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->internalSizeStr:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3b

    .line 99
    :cond_22
    iget-wide v2, v0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v4, -0x2

    cmp-long p2, v2, v4

    if-nez p2, :cond_30

    .line 100
    iget-object p0, p0, Lcom/meizu/settings/applications/AppViewHolder;->appSize:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3b

    :cond_30
    const-wide/16 p1, -0x1

    cmp-long p1, v2, p1

    if-nez p1, :cond_3b

    .line 102
    iget-object p0, p0, Lcom/meizu/settings/applications/AppViewHolder;->appSize:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3b
    :goto_3b
    return-void
.end method
