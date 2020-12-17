.class public Lcom/android/settings/widget/SwitchBarController;
.super Lcom/android/settings/widget/SwitchWidgetController;
.source "SwitchBarController.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# instance fields
.field private final mSwitchBar:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method public constructor <init>(Lcom/android/settings/widget/SwitchBar;)V
    .registers 2

    .line 31
    invoke-direct {p0}, Lcom/android/settings/widget/SwitchWidgetController;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/settings/widget/SwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .registers 1

    .line 67
    iget-object p0, p0, Lcom/android/settings/widget/SwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result p0

    return p0
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .registers 3

    .line 77
    iget-object p0, p0, Lcom/android/settings/widget/SwitchWidgetController;->mListener:Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;

    if-eqz p0, :cond_7

    .line 78
    invoke-interface {p0, p2}, Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;->onSwitchToggled(Z)Z

    :cond_7
    return-void
.end method

.method public setChecked(Z)V
    .registers 2

    .line 62
    iget-object p0, p0, Lcom/android/settings/widget/SwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    return-void
.end method

.method public setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .registers 2

    .line 84
    iget-object p0, p0, Lcom/android/settings/widget/SwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SwitchBar;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void
.end method

.method public setEnabled(Z)V
    .registers 2

    .line 72
    iget-object p0, p0, Lcom/android/settings/widget/SwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    return-void
.end method

.method public setupView()V
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/android/settings/widget/SwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/android/settings/widget/SwitchBar;->show()V

    return-void
.end method

.method public startListening()V
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    return-void
.end method

.method public stopListening()V
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    return-void
.end method

.method public teardownView()V
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/android/settings/widget/SwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    return-void
.end method

.method public updateTitle(Z)V
    .registers 2

    .line 47
    iget-object p0, p0, Lcom/android/settings/widget/SwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SwitchBar;->setTextViewLabelAndBackground(Z)V

    return-void
.end method
