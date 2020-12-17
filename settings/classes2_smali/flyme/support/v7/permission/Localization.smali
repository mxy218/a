.class public Lflyme/support/v7/permission/Localization;
.super Ljava/lang/Object;
.source "Localization.java"


# instance fields
.field private mIconId:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field private mLabel:Ljava/lang/String;

.field private mLabelId:I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field private mPriority:I


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .registers 4
    .param p3  # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lflyme/support/v7/permission/Localization;->mPriority:I

    .line 21
    iput-object p2, p0, Lflyme/support/v7/permission/Localization;->mLabel:Ljava/lang/String;

    .line 22
    iput p3, p0, Lflyme/support/v7/permission/Localization;->mIconId:I

    return-void
.end method


# virtual methods
.method public getLabelString(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 48
    iget v0, p0, Lflyme/support/v7/permission/Localization;->mLabelId:I

    if-eqz v0, :cond_f

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget p0, p0, Lflyme/support/v7/permission/Localization;->mLabelId:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 51
    :cond_f
    iget-object p0, p0, Lflyme/support/v7/permission/Localization;->mLabel:Ljava/lang/String;

    return-object p0
.end method

.method public getPriority()I
    .registers 1

    .line 32
    iget p0, p0, Lflyme/support/v7/permission/Localization;->mPriority:I

    return p0
.end method
