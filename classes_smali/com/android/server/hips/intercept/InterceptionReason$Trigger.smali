.class public Lcom/android/server/hips/intercept/InterceptionReason$Trigger;
.super Ljava/lang/Object;
.source "InterceptionReason.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hips/intercept/InterceptionReason;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Trigger"
.end annotation


# static fields
.field public static final FOCUS_PENDING_WAKEUP_OTHER:Ljava/lang/String; = "pending_focus_wakeup_other"

.field public static final FOCUS_WAKEUP_OTHER:Ljava/lang/String; = "focus_wakeup_other"

.field public static final JOB:Ljava/lang/String; = "job"

.field public static final JOB_3PARTY:Ljava/lang/String; = "job_3party"

.field public static final JOB_SYSTEM:Ljava/lang/String; = "job_system"

.field public static final JOB_SYSTEM_APP:Ljava/lang/String; = "job_system_app"

.field public static final LAUNCHER:Ljava/lang/String; = "launcher"

.field public static final NOTIFICATION:Ljava/lang/String; = "notification"

.field public static final SELF:Ljava/lang/String; = "self"

.field public static final SELF_PENDING_INTENT:Ljava/lang/String; = "self_pending_intent"

.field public static final UNKNOWN:Ljava/lang/String; = "unknown"


# instance fields
.field final synthetic this$0:Lcom/android/server/hips/intercept/InterceptionReason;


# direct methods
.method public constructor <init>(Lcom/android/server/hips/intercept/InterceptionReason;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/hips/intercept/InterceptionReason;

    .line 78
    iput-object p1, p0, Lcom/android/server/hips/intercept/InterceptionReason$Trigger;->this$0:Lcom/android/server/hips/intercept/InterceptionReason;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
