.class public Lcom/android/settings/password/CredentialCheckResultTracker;
.super Landroidx/fragment/app/Fragment;
.source "CredentialCheckResultTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/CredentialCheckResultTracker$Listener;
    }
.end annotation


# instance fields
.field private mHasResult:Z

.field private mListener:Lcom/android/settings/password/CredentialCheckResultTracker$Listener;

.field private mResultData:Landroid/content/Intent;

.field private mResultEffectiveUserId:I

.field private mResultMatched:Z

.field private mResultTimeoutMs:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mHasResult:Z

    return-void
.end method


# virtual methods
.method public clearResult()V
    .registers 3

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mHasResult:Z

    .line 71
    iput-boolean v0, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mResultMatched:Z

    const/4 v1, 0x0

    .line 72
    iput-object v1, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mResultData:Landroid/content/Intent;

    .line 73
    iput v0, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mResultTimeoutMs:I

    .line 74
    iput v0, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mResultEffectiveUserId:I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 39
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 40
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    return-void
.end method

.method public setListener(Lcom/android/settings/password/CredentialCheckResultTracker$Listener;)V
    .registers 9

    .line 44
    iget-object v0, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mListener:Lcom/android/settings/password/CredentialCheckResultTracker$Listener;

    if-ne v0, p1, :cond_5

    return-void

    .line 48
    :cond_5
    iput-object p1, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mListener:Lcom/android/settings/password/CredentialCheckResultTracker$Listener;

    .line 49
    iget-object v1, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mListener:Lcom/android/settings/password/CredentialCheckResultTracker$Listener;

    if-eqz v1, :cond_1b

    iget-boolean p1, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mHasResult:Z

    if-eqz p1, :cond_1b

    .line 50
    iget-boolean v2, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mResultMatched:Z

    iget-object v3, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mResultData:Landroid/content/Intent;

    iget v4, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mResultTimeoutMs:I

    iget v5, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mResultEffectiveUserId:I

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/android/settings/password/CredentialCheckResultTracker$Listener;->onCredentialChecked(ZLandroid/content/Intent;IIZ)V

    :cond_1b
    return-void
.end method

.method public setResult(ZLandroid/content/Intent;II)V
    .registers 11

    .line 56
    iput-boolean p1, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mResultMatched:Z

    .line 57
    iput-object p2, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mResultData:Landroid/content/Intent;

    .line 58
    iput p3, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mResultTimeoutMs:I

    .line 59
    iput p4, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mResultEffectiveUserId:I

    const/4 p1, 0x1

    .line 61
    iput-boolean p1, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mHasResult:Z

    .line 62
    iget-object v0, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mListener:Lcom/android/settings/password/CredentialCheckResultTracker$Listener;

    if-eqz v0, :cond_1e

    .line 63
    iget-boolean v1, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mResultMatched:Z

    iget-object v2, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mResultData:Landroid/content/Intent;

    iget v3, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mResultTimeoutMs:I

    iget v4, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mResultEffectiveUserId:I

    const/4 v5, 0x1

    invoke-interface/range {v0 .. v5}, Lcom/android/settings/password/CredentialCheckResultTracker$Listener;->onCredentialChecked(ZLandroid/content/Intent;IIZ)V

    const/4 p1, 0x0

    .line 65
    iput-boolean p1, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mHasResult:Z

    :cond_1e
    return-void
.end method
