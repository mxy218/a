.class public Lcom/android/settings/widget/ToggleSwitch;
.super Landroid/widget/Switch;
.source "ToggleSwitch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;
    }
.end annotation


# instance fields
.field private mOnBeforeListener:Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public setChecked(Z)V
    .registers 3

    .line 53
    iget-object v0, p0, Lcom/android/settings/widget/ToggleSwitch;->mOnBeforeListener:Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;

    if-eqz v0, :cond_b

    .line 54
    invoke-interface {v0, p0, p1}, Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;->onBeforeCheckedChanged(Lcom/android/settings/widget/ToggleSwitch;Z)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 57
    :cond_b
    invoke-super {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method

.method public setCheckedInternal(Z)V
    .registers 2

    .line 61
    invoke-super {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method

.method public setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V
    .registers 2

    .line 48
    iput-object p1, p0, Lcom/android/settings/widget/ToggleSwitch;->mOnBeforeListener:Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;

    return-void
.end method
