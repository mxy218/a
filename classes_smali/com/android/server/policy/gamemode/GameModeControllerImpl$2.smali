.class Lcom/android/server/policy/gamemode/GameModeControllerImpl$2;
.super Ljava/lang/Object;
.source "GameModeControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/gamemode/GameModeControllerImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/gamemode/GameModeControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/server/policy/gamemode/GameModeControllerImpl;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/policy/gamemode/GameModeControllerImpl;

    .line 122
    iput-object p1, p0, Lcom/android/server/policy/gamemode/GameModeControllerImpl$2;->this$0:Lcom/android/server/policy/gamemode/GameModeControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 125
    iget-object v0, p0, Lcom/android/server/policy/gamemode/GameModeControllerImpl$2;->this$0:Lcom/android/server/policy/gamemode/GameModeControllerImpl;

    invoke-static {v0}, Lcom/android/server/policy/gamemode/GameModeControllerImpl;->access$900(Lcom/android/server/policy/gamemode/GameModeControllerImpl;)V

    .line 126
    return-void
.end method
