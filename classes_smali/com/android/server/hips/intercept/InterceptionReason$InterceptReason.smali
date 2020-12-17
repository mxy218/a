.class public Lcom/android/server/hips/intercept/InterceptionReason$InterceptReason;
.super Ljava/lang/Object;
.source "InterceptionReason.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hips/intercept/InterceptionReason;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InterceptReason"
.end annotation


# static fields
.field public static final NULL:Ljava/lang/String; = "null"

.field public static final UNKNOWN:Ljava/lang/String; = "unknown"


# instance fields
.field final synthetic this$0:Lcom/android/server/hips/intercept/InterceptionReason;


# direct methods
.method public constructor <init>(Lcom/android/server/hips/intercept/InterceptionReason;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/hips/intercept/InterceptionReason;

    .line 48
    iput-object p1, p0, Lcom/android/server/hips/intercept/InterceptionReason$InterceptReason;->this$0:Lcom/android/server/hips/intercept/InterceptionReason;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
