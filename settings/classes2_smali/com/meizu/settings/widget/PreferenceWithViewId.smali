.class public Lcom/meizu/settings/widget/PreferenceWithViewId;
.super Lcom/meizu/settings/widget/RestrictedPreference;
.source "PreferenceWithViewId.java"


# instance fields
.field private mRootViewId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 12
    invoke-direct {p0, p1}, Lcom/meizu/settings/widget/RestrictedPreference;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/meizu/settings/widget/PreferenceWithViewId;->mRootViewId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/meizu/settings/widget/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/meizu/settings/widget/PreferenceWithViewId;->mRootViewId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/settings/widget/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/meizu/settings/widget/PreferenceWithViewId;->mRootViewId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/meizu/settings/widget/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/meizu/settings/widget/PreferenceWithViewId;->mRootViewId:I

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .registers 2

    .line 34
    invoke-super {p0, p1}, Lcom/meizu/settings/widget/RestrictedPreference;->onBindView(Landroid/view/View;)V

    .line 35
    iget p0, p0, Lcom/meizu/settings/widget/PreferenceWithViewId;->mRootViewId:I

    if-lez p0, :cond_a

    .line 36
    invoke-virtual {p1, p0}, Landroid/view/View;->setId(I)V

    :cond_a
    return-void
.end method

.method public setViewId(I)V
    .registers 2

    .line 29
    iput p1, p0, Lcom/meizu/settings/widget/PreferenceWithViewId;->mRootViewId:I

    return-void
.end method
