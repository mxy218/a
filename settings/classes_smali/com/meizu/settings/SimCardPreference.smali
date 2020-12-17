.class public Lcom/meizu/settings/SimCardPreference;
.super Landroid/preference/Preference;
.source "SimCardPreference.java"


# instance fields
.field private mEnabled:Z

.field mSimIcon:Landroid/widget/ImageView;

.field private mSlotId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 28
    iput p1, p0, Lcom/meizu/settings/SimCardPreference;->mSlotId:I

    const/4 p1, 0x1

    .line 29
    iput-boolean p1, p0, Lcom/meizu/settings/SimCardPreference;->mEnabled:Z

    .line 48
    invoke-direct {p0}, Lcom/meizu/settings/SimCardPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 28
    iput p1, p0, Lcom/meizu/settings/SimCardPreference;->mSlotId:I

    const/4 p1, 0x1

    .line 29
    iput-boolean p1, p0, Lcom/meizu/settings/SimCardPreference;->mEnabled:Z

    .line 39
    invoke-direct {p0}, Lcom/meizu/settings/SimCardPreference;->init()V

    return-void
.end method

.method private init()V
    .registers 2

    const v0, 0x7f0d030d

    .line 60
    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .registers 4

    const-string v0, "SimCardPreference"

    const-string/jumbo v1, "onBindView"

    .line 72
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0a0683

    .line 73
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/settings/SimCardPreference;->mSimIcon:Landroid/widget/ImageView;

    .line 75
    iget-boolean v0, p0, Lcom/meizu/settings/SimCardPreference;->mEnabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_30

    .line 76
    iget v0, p0, Lcom/meizu/settings/SimCardPreference;->mSlotId:I

    if-nez v0, :cond_25

    .line 77
    iget-object v0, p0, Lcom/meizu/settings/SimCardPreference;->mSimIcon:Landroid/widget/ImageView;

    const v1, 0x7f080169

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_47

    :cond_25
    if-ne v0, v1, :cond_47

    .line 79
    iget-object v0, p0, Lcom/meizu/settings/SimCardPreference;->mSimIcon:Landroid/widget/ImageView;

    const v1, 0x7f08016b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_47

    .line 82
    :cond_30
    iget v0, p0, Lcom/meizu/settings/SimCardPreference;->mSlotId:I

    if-nez v0, :cond_3d

    .line 83
    iget-object v0, p0, Lcom/meizu/settings/SimCardPreference;->mSimIcon:Landroid/widget/ImageView;

    const v1, 0x7f08016a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_47

    :cond_3d
    if-ne v0, v1, :cond_47

    .line 85
    iget-object v0, p0, Lcom/meizu/settings/SimCardPreference;->mSimIcon:Landroid/widget/ImageView;

    const v1, 0x7f08016c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 89
    :cond_47
    :goto_47
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    return-void
.end method

.method public setEnabled(Z)V
    .registers 4

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setEnabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimCardPreference"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iput-boolean p1, p0, Lcom/meizu/settings/SimCardPreference;->mEnabled:Z

    .line 96
    invoke-super {p0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    return-void
.end method
