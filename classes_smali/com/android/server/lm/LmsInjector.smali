.class public Lcom/android/server/lm/LmsInjector;
.super Ljava/lang/Object;
.source "LmsInjector.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LmsInjector"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initialize(Lcom/android/server/LocationManagerService;)V
    .registers 2
    .param p0, "lms"  # Lcom/android/server/LocationManagerService;

    .line 24
    invoke-static {}, Lcom/android/server/lm/LmsExecutor;->getInstance()Lcom/android/server/lm/LmsExecutor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/lm/LmsExecutor;->initialize(Lcom/android/server/LocationManagerService;)V

    .line 25
    return-void
.end method
