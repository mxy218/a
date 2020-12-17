.class public Lcom/meizu/settings/serviceinfo/FlymeServiceInfoProgressPreferenceCategory;
.super Landroid/preference/Preference;
.source "FlymeServiceInfoProgressPreferenceCategory.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCreated:Z

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, v0}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoProgressPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-direct {p0, p1}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoProgressPreferenceCategory;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-direct {p0, p1}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoProgressPreferenceCategory;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoProgressPreferenceCategory;->mContext:Landroid/content/Context;

    const/4 p1, 0x1

    .line 36
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->filterDivider(Z)V

    const/4 p1, 0x0

    .line 37
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setSelectable(Z)V

    return-void
.end method

.method private initLoadingViewPosition()V
    .registers 5

    .line 52
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 54
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    .line 55
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 56
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 57
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xa070169

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 59
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07068b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 61
    iget v0, v0, Landroid/graphics/Point;->y:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    .line 62
    iget-object v1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoProgressPreferenceCategory;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoProgressPreferenceCategory;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoProgressPreferenceCategory;->mView:Landroid/view/View;

    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    .line 62
    invoke-virtual {v1, v2, v0, v3, p0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 42
    iget-boolean v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoProgressPreferenceCategory;->mCreated:Z

    if-nez v0, :cond_1a

    .line 43
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoProgressPreferenceCategory;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d02b9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoProgressPreferenceCategory;->mView:Landroid/view/View;

    .line 45
    invoke-direct {p0}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoProgressPreferenceCategory;->initLoadingViewPosition()V

    const/4 p1, 0x1

    .line 46
    iput-boolean p1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoProgressPreferenceCategory;->mCreated:Z

    .line 48
    :cond_1a
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoProgressPreferenceCategory;->mView:Landroid/view/View;

    return-object p0
.end method
