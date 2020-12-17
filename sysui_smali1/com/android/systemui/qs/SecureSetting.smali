.class public abstract Lcom/android/systemui/qs/SecureSetting;
.super Landroid/database/ContentObserver;
.source "SecureSetting.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/Listenable;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mListening:Z

.field private mObservedValue:I

.field private final mSettingName:Ljava/lang/String;

.field private mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .registers 4

    .line 41
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const/4 p2, 0x0

    .line 36
    iput p2, p0, Lcom/android/systemui/qs/SecureSetting;->mObservedValue:I

    .line 42
    iput-object p1, p0, Lcom/android/systemui/qs/SecureSetting;->mContext:Landroid/content/Context;

    .line 43
    iput-object p3, p0, Lcom/android/systemui/qs/SecureSetting;->mSettingName:Ljava/lang/String;

    .line 44
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/SecureSetting;->mUserId:I

    return-void
.end method


# virtual methods
.method public getValue()I
    .registers 4

    .line 48
    iget-object v0, p0, Lcom/android/systemui/qs/SecureSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/SecureSetting;->mSettingName:Ljava/lang/String;

    iget p0, p0, Lcom/android/systemui/qs/SecureSetting;->mUserId:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method protected abstract handleValueChanged(IZ)V
.end method

.method public onChange(Z)V
    .registers 3

    .line 71
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecureSetting;->getValue()I

    move-result p1

    .line 72
    iget v0, p0, Lcom/android/systemui/qs/SecureSetting;->mObservedValue:I

    if-eq p1, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/SecureSetting;->handleValueChanged(IZ)V

    .line 73
    iput p1, p0, Lcom/android/systemui/qs/SecureSetting;->mObservedValue:I

    return-void
.end method

.method public setListening(Z)V
    .registers 5

    .line 57
    iget-boolean v0, p0, Lcom/android/systemui/qs/SecureSetting;->mListening:Z

    if-ne p1, v0, :cond_5

    return-void

    .line 58
    :cond_5
    iput-boolean p1, p0, Lcom/android/systemui/qs/SecureSetting;->mListening:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_22

    .line 60
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecureSetting;->getValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/SecureSetting;->mObservedValue:I

    .line 61
    iget-object p1, p0, Lcom/android/systemui/qs/SecureSetting;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/qs/SecureSetting;->mSettingName:Ljava/lang/String;

    .line 62
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/qs/SecureSetting;->mUserId:I

    .line 61
    invoke-virtual {p1, v1, v0, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_2d

    .line 64
    :cond_22
    iget-object p1, p0, Lcom/android/systemui/qs/SecureSetting;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 65
    iput v0, p0, Lcom/android/systemui/qs/SecureSetting;->mObservedValue:I

    :goto_2d
    return-void
.end method

.method public setUserId(I)V
    .registers 2

    .line 77
    iput p1, p0, Lcom/android/systemui/qs/SecureSetting;->mUserId:I

    .line 78
    iget-boolean p1, p0, Lcom/android/systemui/qs/SecureSetting;->mListening:Z

    if-eqz p1, :cond_e

    const/4 p1, 0x0

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    const/4 p1, 0x1

    .line 80
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    :cond_e
    return-void
.end method

.method public setValue(I)V
    .registers 4

    .line 52
    iget-object v0, p0, Lcom/android/systemui/qs/SecureSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/SecureSetting;->mSettingName:Ljava/lang/String;

    iget p0, p0, Lcom/android/systemui/qs/SecureSetting;->mUserId:I

    invoke-static {v0, v1, p1, p0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method
