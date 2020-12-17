.class public Lcom/meizu/settings/widget/SymmetrySeekBarPreference;
.super Landroid/preference/Preference;
.source "SymmetrySeekBarPreference.java"


# instance fields
.field private mMaxProgress:I

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mProgress:I

.field protected mSeekBar:Landroid/widget/SeekBar;

.field private mVolumeDecrease:Landroid/widget/ImageView;

.field private mVolumeIncrease:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/settings/widget/SymmetrySeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 18
    iput p1, p0, Lcom/meizu/settings/widget/SymmetrySeekBarPreference;->mProgress:I

    .line 19
    iput p1, p0, Lcom/meizu/settings/widget/SymmetrySeekBarPreference;->mMaxProgress:I

    const p1, 0x7f0d0226

    .line 31
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .registers 3

    .line 36
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v0, 0x7f0a0643

    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/meizu/settings/widget/SymmetrySeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const v0, 0x7f0a0340

    .line 39
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/settings/widget/SymmetrySeekBarPreference;->mVolumeDecrease:Landroid/widget/ImageView;

    const v0, 0x7f0a0341

    .line 40
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/meizu/settings/widget/SymmetrySeekBarPreference;->mVolumeIncrease:Landroid/widget/ImageView;

    .line 41
    iget p1, p0, Lcom/meizu/settings/widget/SymmetrySeekBarPreference;->mMaxProgress:I

    invoke-virtual {p0, p1}, Lcom/meizu/settings/widget/SymmetrySeekBarPreference;->setMax(I)V

    .line 42
    iget p1, p0, Lcom/meizu/settings/widget/SymmetrySeekBarPreference;->mProgress:I

    invoke-virtual {p0, p1}, Lcom/meizu/settings/widget/SymmetrySeekBarPreference;->setProgress(I)V

    .line 43
    iget-object p1, p0, Lcom/meizu/settings/widget/SymmetrySeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setKeyProgressIncrement(I)V

    .line 44
    iget-object p1, p0, Lcom/meizu/settings/widget/SymmetrySeekBarPreference;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz p1, :cond_3d

    .line 45
    iget-object v0, p0, Lcom/meizu/settings/widget/SymmetrySeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 47
    :cond_3d
    iget-object p1, p0, Lcom/meizu/settings/widget/SymmetrySeekBarPreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_4d

    .line 48
    iget-object v0, p0, Lcom/meizu/settings/widget/SymmetrySeekBarPreference;->mVolumeDecrease:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object p1, p0, Lcom/meizu/settings/widget/SymmetrySeekBarPreference;->mVolumeIncrease:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/meizu/settings/widget/SymmetrySeekBarPreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4d
    return-void
.end method

.method public setMax(I)V
    .registers 2

    .line 69
    iput p1, p0, Lcom/meizu/settings/widget/SymmetrySeekBarPreference;->mMaxProgress:I

    .line 70
    iget-object p1, p0, Lcom/meizu/settings/widget/SymmetrySeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz p1, :cond_d

    iget p0, p0, Lcom/meizu/settings/widget/SymmetrySeekBarPreference;->mMaxProgress:I

    if-ltz p0, :cond_d

    .line 71
    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setMax(I)V

    :cond_d
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    .line 80
    iput-object p1, p0, Lcom/meizu/settings/widget/SymmetrySeekBarPreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .registers 2

    .line 76
    iput-object p1, p0, Lcom/meizu/settings/widget/SymmetrySeekBarPreference;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method public setProgress(I)V
    .registers 2

    .line 58
    iput p1, p0, Lcom/meizu/settings/widget/SymmetrySeekBarPreference;->mProgress:I

    .line 59
    iget-object p1, p0, Lcom/meizu/settings/widget/SymmetrySeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz p1, :cond_d

    iget p0, p0, Lcom/meizu/settings/widget/SymmetrySeekBarPreference;->mProgress:I

    if-ltz p0, :cond_d

    .line 60
    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_d
    return-void
.end method
