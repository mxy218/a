.class public Lcom/android/systemui/statusbar/phone/UserAvatarView;
.super Landroid/view/View;
.source "UserAvatarView.java"


# instance fields
.field private final mDrawable:Lcom/android/settingslib/drawable/UserIconDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/UserAvatarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/UserAvatarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/UserAvatarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7

    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 35
    new-instance v0, Lcom/android/settingslib/drawable/UserIconDrawable;

    invoke-direct {v0}, Lcom/android/settingslib/drawable/UserIconDrawable;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawable:Lcom/android/settingslib/drawable/UserIconDrawable;

    .line 42
    sget-object v0, Lcom/android/systemui/R$styleable;->UserAvatarView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 44
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 p3, 0x0

    :goto_15
    if-ge p3, p2, :cond_66

    .line 46
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result p4

    .line 47
    sget v0, Lcom/android/systemui/R$styleable;->UserAvatarView_avatarPadding:I

    const/4 v1, 0x0

    if-ne p4, v0, :cond_28

    .line 48
    invoke-virtual {p1, p4, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p4

    invoke-virtual {p0, p4}, Lcom/android/systemui/statusbar/phone/UserAvatarView;->setAvatarPadding(F)V

    goto :goto_63

    .line 49
    :cond_28
    sget v0, Lcom/android/systemui/R$styleable;->UserAvatarView_frameWidth:I

    if-ne p4, v0, :cond_34

    .line 50
    invoke-virtual {p1, p4, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p4

    invoke-virtual {p0, p4}, Lcom/android/systemui/statusbar/phone/UserAvatarView;->setFrameWidth(F)V

    goto :goto_63

    .line 51
    :cond_34
    sget v0, Lcom/android/systemui/R$styleable;->UserAvatarView_framePadding:I

    if-ne p4, v0, :cond_40

    .line 52
    invoke-virtual {p1, p4, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p4

    invoke-virtual {p0, p4}, Lcom/android/systemui/statusbar/phone/UserAvatarView;->setFramePadding(F)V

    goto :goto_63

    .line 53
    :cond_40
    sget v0, Lcom/android/systemui/R$styleable;->UserAvatarView_frameColor:I

    if-ne p4, v0, :cond_4c

    .line 54
    invoke-virtual {p1, p4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p4

    invoke-virtual {p0, p4}, Lcom/android/systemui/statusbar/phone/UserAvatarView;->setFrameColor(Landroid/content/res/ColorStateList;)V

    goto :goto_63

    .line 55
    :cond_4c
    sget v0, Lcom/android/systemui/R$styleable;->UserAvatarView_badgeDiameter:I

    if-ne p4, v0, :cond_58

    .line 56
    invoke-virtual {p1, p4, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p4

    invoke-virtual {p0, p4}, Lcom/android/systemui/statusbar/phone/UserAvatarView;->setBadgeDiameter(F)V

    goto :goto_63

    .line 57
    :cond_58
    sget v0, Lcom/android/systemui/R$styleable;->UserAvatarView_badgeMargin:I

    if-ne p4, v0, :cond_63

    .line 58
    invoke-virtual {p1, p4, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p4

    invoke-virtual {p0, p4}, Lcom/android/systemui/statusbar/phone/UserAvatarView;->setBadgeMargin(F)V

    :cond_63
    :goto_63
    add-int/lit8 p3, p3, 0x1

    goto :goto_15

    .line 61
    :cond_66
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 62
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawable:Lcom/android/settingslib/drawable/UserIconDrawable;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public setAvatarPadding(F)V
    .registers 2

    .line 98
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawable:Lcom/android/settingslib/drawable/UserIconDrawable;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/drawable/UserIconDrawable;->setPadding(F)V

    return-void
.end method

.method public setAvatarWithBadge(Landroid/graphics/Bitmap;I)V
    .registers 4

    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawable:Lcom/android/settingslib/drawable/UserIconDrawable;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/drawable/UserIconDrawable;->setIcon(Landroid/graphics/Bitmap;)Lcom/android/settingslib/drawable/UserIconDrawable;

    .line 116
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawable:Lcom/android/settingslib/drawable/UserIconDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Lcom/android/settingslib/drawable/UserIconDrawable;->setBadgeIfManagedUser(Landroid/content/Context;I)Lcom/android/settingslib/drawable/UserIconDrawable;

    return-void
.end method

.method public setBadgeDiameter(F)V
    .registers 3

    .line 102
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawable:Lcom/android/settingslib/drawable/UserIconDrawable;

    const/high16 v0, 0x3f000000  # 0.5f

    mul-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/android/settingslib/drawable/UserIconDrawable;->setBadgeRadius(F)V

    return-void
.end method

.method public setBadgeMargin(F)V
    .registers 2

    .line 106
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawable:Lcom/android/settingslib/drawable/UserIconDrawable;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/drawable/UserIconDrawable;->setBadgeMargin(F)V

    return-void
.end method

.method public setDrawableWithBadge(Landroid/graphics/drawable/Drawable;I)V
    .registers 4

    .line 128
    instance-of v0, p1, Lcom/android/settingslib/drawable/UserIconDrawable;

    if-nez v0, :cond_13

    .line 131
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawable:Lcom/android/settingslib/drawable/UserIconDrawable;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/drawable/UserIconDrawable;->setIconDrawable(Landroid/graphics/drawable/Drawable;)Lcom/android/settingslib/drawable/UserIconDrawable;

    .line 132
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawable:Lcom/android/settingslib/drawable/UserIconDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Lcom/android/settingslib/drawable/UserIconDrawable;->setBadgeIfManagedUser(Landroid/content/Context;I)Lcom/android/settingslib/drawable/UserIconDrawable;

    return-void

    .line 129
    :cond_13
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Recursively adding UserIconDrawable"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setFrameColor(Landroid/content/res/ColorStateList;)V
    .registers 2

    .line 86
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawable:Lcom/android/settingslib/drawable/UserIconDrawable;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/drawable/UserIconDrawable;->setFrameColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setFramePadding(F)V
    .registers 2

    .line 94
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawable:Lcom/android/settingslib/drawable/UserIconDrawable;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/drawable/UserIconDrawable;->setFramePadding(F)V

    return-void
.end method

.method public setFrameWidth(F)V
    .registers 2

    .line 90
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawable:Lcom/android/settingslib/drawable/UserIconDrawable;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/drawable/UserIconDrawable;->setFrameWidth(F)V

    return-void
.end method
