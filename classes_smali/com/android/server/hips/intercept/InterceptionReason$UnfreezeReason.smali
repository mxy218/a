.class public Lcom/android/server/hips/intercept/InterceptionReason$UnfreezeReason;
.super Ljava/lang/Object;
.source "InterceptionReason.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hips/intercept/InterceptionReason;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UnfreezeReason"
.end annotation


# static fields
.field public static final BIND:Ljava/lang/String; = ":bind"

.field public static final BRINGUP:Ljava/lang/String; = ":bringup"

.field public static final CALLER_NULL:Ljava/lang/String; = ":caller_null"

.field public static final CALLER_VISIBLE:Ljava/lang/String; = ":caller_visible"

.field public static final CREATED:Ljava/lang/String; = ":created"

.field public static final FROM_APP:Ljava/lang/String; = ":from_app"

.field public static final FROM_BLUETOOTH:Ljava/lang/String; = ":from_bluetooth"

.field public static final NOTIFICATION:Ljava/lang/String; = ":notification"

.field public static final PENDING_INTENT:Ljava/lang/String; = ":pending_intent"

.field public static final REQUEST_CREATE:Ljava/lang/String; = ":request_create"

.field public static final RESUME_TOP:Ljava/lang/String; = ":resume_top"

.field public static final START:Ljava/lang/String; = ":start"

.field public static final STATIC_BROADCAST:Ljava/lang/String; = ":static_broadcast"

.field public static final STOP:Ljava/lang/String; = ":stop"

.field public static final THREAD_EXIST:Ljava/lang/String; = ":thread_exist"

.field public static final UNFREEZE_ACTIVITY:Ljava/lang/String; = "unfreeze_activity"

.field public static final UNFREEZE_BROADCAST:Ljava/lang/String; = "unfreeze_broadcast"

.field public static final UNFREEZE_PROVIDER:Ljava/lang/String; = "unfreeze_provider"

.field public static final UNFREEZE_SERVICE:Ljava/lang/String; = "unfreeze_service"


# instance fields
.field final synthetic this$0:Lcom/android/server/hips/intercept/InterceptionReason;


# direct methods
.method public constructor <init>(Lcom/android/server/hips/intercept/InterceptionReason;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/hips/intercept/InterceptionReason;

    .line 53
    iput-object p1, p0, Lcom/android/server/hips/intercept/InterceptionReason$UnfreezeReason;->this$0:Lcom/android/server/hips/intercept/InterceptionReason;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
