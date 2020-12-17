.class public Lcom/android/settings/applications/AppStateSmsPremBridge;
.super Lcom/android/settings/applications/AppStateBaseBridge;
.source "AppStateSmsPremBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/AppStateSmsPremBridge$SmsState;
    }
.end annotation


# static fields
.field public static final FILTER_APP_PREMIUM_SMS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSmsManager:Lcom/android/internal/telephony/ISms;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 86
    new-instance v0, Lcom/android/settings/applications/AppStateSmsPremBridge$1;

    invoke-direct {v0}, Lcom/android/settings/applications/AppStateSmsPremBridge$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/AppStateSmsPremBridge;->FILTER_APP_PREMIUM_SMS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V
    .registers 4

    .line 37
    invoke-direct {p0, p2, p3}, Lcom/android/settings/applications/AppStateBaseBridge;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    .line 38
    iput-object p1, p0, Lcom/android/settings/applications/AppStateSmsPremBridge;->mContext:Landroid/content/Context;

    const-string p1, "isms"

    .line 39
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/AppStateSmsPremBridge;->mSmsManager:Lcom/android/internal/telephony/ISms;

    return-void
.end method

.method private getSmsState(Ljava/lang/String;)I
    .registers 2

    .line 65
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/applications/AppStateSmsPremBridge;->mSmsManager:Lcom/android/internal/telephony/ISms;

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/ISms;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    :catch_7
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getState(Ljava/lang/String;)Lcom/android/settings/applications/AppStateSmsPremBridge$SmsState;
    .registers 3

    .line 58
    new-instance v0, Lcom/android/settings/applications/AppStateSmsPremBridge$SmsState;

    invoke-direct {v0}, Lcom/android/settings/applications/AppStateSmsPremBridge$SmsState;-><init>()V

    .line 59
    invoke-direct {p0, p1}, Lcom/android/settings/applications/AppStateSmsPremBridge;->getSmsState(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/android/settings/applications/AppStateSmsPremBridge$SmsState;->smsState:I

    return-object v0
.end method

.method protected loadAllExtraInfo()V
    .registers 7

    .line 44
    iget-object v0, p0, Lcom/android/settings/applications/AppStateBaseBridge;->mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_21

    .line 47
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 48
    iget-object v4, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/settings/applications/AppStateSmsPremBridge;->updateExtraInfo(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_21
    return-void
.end method

.method public setSmsState(Ljava/lang/String;I)V
    .registers 3

    .line 73
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/applications/AppStateSmsPremBridge;->mSmsManager:Lcom/android/internal/telephony/ISms;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/telephony/ISms;->setPremiumSmsPermission(Ljava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method

.method protected updateExtraInfo(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V
    .registers 4

    .line 54
    invoke-virtual {p0, p2}, Lcom/android/settings/applications/AppStateSmsPremBridge;->getState(Ljava/lang/String;)Lcom/android/settings/applications/AppStateSmsPremBridge$SmsState;

    move-result-object p0

    iput-object p0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    return-void
.end method
