.class Lcom/android/systemui/doze/DozeDockHandler$DockEventListener;
.super Ljava/lang/Object;
.source "DozeDockHandler.java"

# interfaces
.implements Lcom/android/systemui/dock/DockManager$DockEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/DozeDockHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DockEventListener"
.end annotation


# instance fields
.field private mRegistered:Z

.field final synthetic this$0:Lcom/android/systemui/doze/DozeDockHandler;


# direct methods
.method private constructor <init>(Lcom/android/systemui/doze/DozeDockHandler;)V
    .registers 2

    .line 110
    iput-object p1, p0, Lcom/android/systemui/doze/DozeDockHandler$DockEventListener;->this$0:Lcom/android/systemui/doze/DozeDockHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/doze/DozeDockHandler;Lcom/android/systemui/doze/DozeDockHandler$1;)V
    .registers 3

    .line 110
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeDockHandler$DockEventListener;-><init>(Lcom/android/systemui/doze/DozeDockHandler;)V

    return-void
.end method


# virtual methods
.method register()V
    .registers 2

    .line 144
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeDockHandler$DockEventListener;->mRegistered:Z

    if-eqz v0, :cond_5

    return-void

    .line 147
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/doze/DozeDockHandler$DockEventListener;->this$0:Lcom/android/systemui/doze/DozeDockHandler;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeDockHandler;->access$700(Lcom/android/systemui/doze/DozeDockHandler;)Lcom/android/systemui/dock/DockManager;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 148
    iget-object v0, p0, Lcom/android/systemui/doze/DozeDockHandler$DockEventListener;->this$0:Lcom/android/systemui/doze/DozeDockHandler;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeDockHandler;->access$700(Lcom/android/systemui/doze/DozeDockHandler;)Lcom/android/systemui/dock/DockManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/systemui/dock/DockManager;->addListener(Lcom/android/systemui/dock/DockManager$DockEventListener;)V

    :cond_16
    const/4 v0, 0x1

    .line 150
    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeDockHandler$DockEventListener;->mRegistered:Z

    return-void
.end method

.method unregister()V
    .registers 2

    .line 154
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeDockHandler$DockEventListener;->mRegistered:Z

    if-nez v0, :cond_5

    return-void

    .line 157
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/doze/DozeDockHandler$DockEventListener;->this$0:Lcom/android/systemui/doze/DozeDockHandler;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeDockHandler;->access$700(Lcom/android/systemui/doze/DozeDockHandler;)Lcom/android/systemui/dock/DockManager;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 158
    iget-object v0, p0, Lcom/android/systemui/doze/DozeDockHandler$DockEventListener;->this$0:Lcom/android/systemui/doze/DozeDockHandler;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeDockHandler;->access$700(Lcom/android/systemui/doze/DozeDockHandler;)Lcom/android/systemui/dock/DockManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/systemui/dock/DockManager;->removeListener(Lcom/android/systemui/dock/DockManager$DockEventListener;)V

    :cond_16
    const/4 v0, 0x0

    .line 160
    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeDockHandler$DockEventListener;->mRegistered:Z

    return-void
.end method
