.class Lcom/android/settings/applications/AppStateSmsPremBridge$1;
.super Ljava/lang/Object;
.source "AppStateSmsPremBridge.java"

# interfaces
.implements Lcom/android/settingslib/applications/ApplicationsState$AppFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/AppStateSmsPremBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    .registers 2

    .line 93
    iget-object p0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    instance-of p1, p0, Lcom/android/settings/applications/AppStateSmsPremBridge$SmsState;

    if-eqz p1, :cond_e

    check-cast p0, Lcom/android/settings/applications/AppStateSmsPremBridge$SmsState;

    iget p0, p0, Lcom/android/settings/applications/AppStateSmsPremBridge$SmsState;->smsState:I

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public init()V
    .registers 1

    return-void
.end method
