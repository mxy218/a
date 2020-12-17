.class Lcom/android/systemui/keyguard/KeyguardSliceProvider$1;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardSliceProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/KeyguardSliceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardSliceProvider;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardSliceProvider;)V
    .registers 2

    .line 138
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSliceProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 141
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.DATE_CHANGED"

    .line 142
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_17

    .line 143
    monitor-enter p0

    .line 144
    :try_start_d
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSliceProvider;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->updateClockLocked()V

    .line 145
    monitor-exit p0

    goto :goto_2a

    :catchall_14
    move-exception p1

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_14

    throw p1

    :cond_17
    const-string p2, "android.intent.action.LOCALE_CHANGED"

    .line 146
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 147
    monitor-enter p0

    .line 148
    :try_start_20
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSliceProvider;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->cleanDateFormatLocked()V

    .line 149
    monitor-exit p0

    goto :goto_2a

    :catchall_27
    move-exception p1

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_27

    throw p1

    :cond_2a
    :goto_2a
    return-void
.end method
