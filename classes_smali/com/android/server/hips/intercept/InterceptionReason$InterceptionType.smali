.class public Lcom/android/server/hips/intercept/InterceptionReason$InterceptionType;
.super Ljava/lang/Object;
.source "InterceptionReason.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hips/intercept/InterceptionReason;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InterceptionType"
.end annotation


# static fields
.field public static final ACTIVITY:I = 0x1

.field public static final BROADCAST:I = 0x3

.field public static final PROVIDER:I = 0x4

.field public static final SERVICE:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/android/server/hips/intercept/InterceptionReason;


# direct methods
.method public constructor <init>(Lcom/android/server/hips/intercept/InterceptionReason;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/hips/intercept/InterceptionReason;

    .line 41
    iput-object p1, p0, Lcom/android/server/hips/intercept/InterceptionReason$InterceptionType;->this$0:Lcom/android/server/hips/intercept/InterceptionReason;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
