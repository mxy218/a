.class Landroidx/leanback/widget/CheckableImageView;
.super Landroid/widget/ImageView;
.source "CheckableImageView.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private mChecked:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    .line 28
    sput-object v0, Landroidx/leanback/widget/CheckableImageView;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, v0}, Landroidx/leanback/widget/CheckableImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, v0}, Landroidx/leanback/widget/CheckableImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .registers 1

    .line 58
    iget-boolean p0, p0, Landroidx/leanback/widget/CheckableImageView;->mChecked:Z

    return p0
.end method

.method public onCreateDrawableState(I)[I
    .registers 2

    add-int/lit8 p1, p1, 0x1

    .line 44
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 45
    invoke-virtual {p0}, Landroidx/leanback/widget/CheckableImageView;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_11

    .line 46
    sget-object p0, Landroidx/leanback/widget/CheckableImageView;->CHECKED_STATE_SET:[I

    invoke-static {p1, p0}, Landroid/widget/ImageView;->mergeDrawableStates([I[I)[I

    :cond_11
    return-object p1
.end method

.method public setChecked(Z)V
    .registers 3

    .line 63
    iget-boolean v0, p0, Landroidx/leanback/widget/CheckableImageView;->mChecked:Z

    if-eq v0, p1, :cond_9

    .line 64
    iput-boolean p1, p0, Landroidx/leanback/widget/CheckableImageView;->mChecked:Z

    .line 65
    invoke-virtual {p0}, Landroid/widget/ImageView;->refreshDrawableState()V

    :cond_9
    return-void
.end method

.method public toggle()V
    .registers 2

    .line 53
    iget-boolean v0, p0, Landroidx/leanback/widget/CheckableImageView;->mChecked:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/CheckableImageView;->setChecked(Z)V

    return-void
.end method
