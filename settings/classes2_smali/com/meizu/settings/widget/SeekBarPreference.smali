.class public Lcom/meizu/settings/widget/SeekBarPreference;
.super Landroid/preference/Preference;
.source "SeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/widget/SeekBarPreference$SavedState;
    }
.end annotation


# instance fields
.field private mMax:I

.field private mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mProgress:I

.field private mTrackingTouch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, v0}, Lcom/meizu/settings/widget/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x11200cb

    .line 66
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/settings/widget/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/meizu/settings/widget/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 8

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 46
    sget-object v0, Lcom/android/internal/R$styleable;->ProgressBar:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 48
    iget v1, p0, Lcom/meizu/settings/widget/SeekBarPreference;->mMax:I

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/meizu/settings/widget/SeekBarPreference;->setMax(I)V

    .line 49
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 51
    sget-object v0, Lcom/android/internal/R$styleable;->SeekBarPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    const p3, 0x10900d1

    .line 53
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 56
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 58
    invoke-virtual {p0, p2}, Landroid/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method private setProgress(IZ)V
    .registers 4

    .line 131
    iget v0, p0, Lcom/meizu/settings/widget/SeekBarPreference;->mMax:I

    if-le p1, v0, :cond_5

    move p1, v0

    :cond_5
    if-gez p1, :cond_8

    const/4 p1, 0x0

    .line 137
    :cond_8
    iget v0, p0, Lcom/meizu/settings/widget/SeekBarPreference;->mProgress:I

    if-eq p1, v0, :cond_16

    .line 138
    iput p1, p0, Lcom/meizu/settings/widget/SeekBarPreference;->mProgress:I

    .line 139
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->persistInt(I)Z

    if-eqz p2, :cond_16

    .line 141
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    :cond_16
    return-void
.end method


# virtual methods
.method public getSummary()Ljava/lang/CharSequence;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public onBindView(Landroid/view/View;)V
    .registers 3

    .line 75
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 76
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const v0, 0x1020410

    .line 77
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    .line 79
    iget-object v0, p0, Lcom/meizu/settings/widget/SeekBarPreference;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_17

    .line 80
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    goto :goto_1a

    .line 82
    :cond_17
    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 85
    :goto_1a
    iget v0, p0, Lcom/meizu/settings/widget/SeekBarPreference;->mMax:I

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 86
    iget v0, p0, Lcom/meizu/settings/widget/SeekBarPreference;->mProgress:I

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 87
    invoke-virtual {p0}, Landroid/preference/Preference;->isEnabled()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .registers 3

    const/4 p0, 0x0

    .line 103
    invoke-virtual {p1, p2, p0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 5

    .line 108
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    return v0

    :cond_8
    const p0, 0x1020410

    .line 112
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/SeekBar;

    if-nez p0, :cond_14

    return v0

    .line 116
    :cond_14
    invoke-virtual {p0, p2, p3}, Landroid/widget/SeekBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 4

    if-eqz p3, :cond_9

    .line 168
    iget-boolean p2, p0, Lcom/meizu/settings/widget/SeekBarPreference;->mTrackingTouch:Z

    if-nez p2, :cond_9

    .line 169
    invoke-virtual {p0, p1}, Lcom/meizu/settings/widget/SeekBarPreference;->syncProgress(Landroid/widget/SeekBar;)V

    :cond_9
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4

    .line 213
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/meizu/settings/widget/SeekBarPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 215
    invoke-super {p0, p1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 220
    :cond_10
    check-cast p1, Lcom/meizu/settings/widget/SeekBarPreference$SavedState;

    .line 221
    invoke-virtual {p1}, Landroid/preference/Preference$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 222
    iget v0, p1, Lcom/meizu/settings/widget/SeekBarPreference$SavedState;->progress:I

    iput v0, p0, Lcom/meizu/settings/widget/SeekBarPreference;->mProgress:I

    .line 223
    iget p1, p1, Lcom/meizu/settings/widget/SeekBarPreference$SavedState;->max:I

    iput p1, p0, Lcom/meizu/settings/widget/SeekBarPreference;->mMax:I

    .line 224
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 198
    invoke-super {p0}, Landroid/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 199
    invoke-virtual {p0}, Landroid/preference/Preference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 205
    :cond_b
    new-instance v1, Lcom/meizu/settings/widget/SeekBarPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/meizu/settings/widget/SeekBarPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 206
    iget v0, p0, Lcom/meizu/settings/widget/SeekBarPreference;->mProgress:I

    iput v0, v1, Lcom/meizu/settings/widget/SeekBarPreference$SavedState;->progress:I

    .line 207
    iget p0, p0, Lcom/meizu/settings/widget/SeekBarPreference;->mMax:I

    iput p0, v1, Lcom/meizu/settings/widget/SeekBarPreference$SavedState;->max:I

    return-object v1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .registers 3

    if-eqz p1, :cond_9

    .line 97
    iget p1, p0, Lcom/meizu/settings/widget/SeekBarPreference;->mProgress:I

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->getPersistedInt(I)I

    move-result p1

    goto :goto_f

    .line 98
    :cond_9
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 97
    :goto_f
    invoke-virtual {p0, p1}, Lcom/meizu/settings/widget/SeekBarPreference;->setProgress(I)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    const/4 p1, 0x1

    .line 175
    iput-boolean p1, p0, Lcom/meizu/settings/widget/SeekBarPreference;->mTrackingTouch:Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 4

    const/4 v0, 0x0

    .line 180
    iput-boolean v0, p0, Lcom/meizu/settings/widget/SeekBarPreference;->mTrackingTouch:Z

    .line 181
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/meizu/settings/widget/SeekBarPreference;->mProgress:I

    if-eq v0, v1, :cond_e

    .line 182
    invoke-virtual {p0, p1}, Lcom/meizu/settings/widget/SeekBarPreference;->syncProgress(Landroid/widget/SeekBar;)V

    :cond_e
    return-void
.end method

.method public setMax(I)V
    .registers 3

    .line 120
    iget v0, p0, Lcom/meizu/settings/widget/SeekBarPreference;->mMax:I

    if-eq p1, v0, :cond_9

    .line 121
    iput p1, p0, Lcom/meizu/settings/widget/SeekBarPreference;->mMax:I

    .line 122
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    :cond_9
    return-void
.end method

.method public setProgress(I)V
    .registers 3

    const/4 v0, 0x1

    .line 127
    invoke-direct {p0, p1, v0}, Lcom/meizu/settings/widget/SeekBarPreference;->setProgress(IZ)V

    return-void
.end method

.method syncProgress(Landroid/widget/SeekBar;)V
    .registers 4

    .line 155
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 156
    iget v1, p0, Lcom/meizu/settings/widget/SeekBarPreference;->mProgress:I

    if-eq v0, v1, :cond_1c

    .line 157
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 p1, 0x0

    .line 158
    invoke-direct {p0, v0, p1}, Lcom/meizu/settings/widget/SeekBarPreference;->setProgress(IZ)V

    goto :goto_1c

    .line 160
    :cond_17
    iget p0, p0, Lcom/meizu/settings/widget/SeekBarPreference;->mProgress:I

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_1c
    :goto_1c
    return-void
.end method
