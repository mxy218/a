.class public interface abstract Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$Callbacks;
.super Ljava/lang/Object;
.source "GlobalActionsPanelPlugin.java"


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    version = 0x0
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugins/GlobalActionsPanelPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callbacks"
.end annotation


# static fields
.field public static final VERSION:I


# virtual methods
.method public abstract dismissGlobalActionsMenu()V
.end method

.method public startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V
    .registers 2

    .line 73
    :try_start_0
    invoke-virtual {p1}, Landroid/app/PendingIntent;->send()V
    :try_end_3
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
