.class Lcom/android/systemui/pip/tv/PipManager$2;
.super Ljava/lang/Object;
.source "PipManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/tv/PipManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/tv/PipManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/tv/PipManager;)V
    .registers 2

    .line 150
    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipManager$2;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 153
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipManager$2;->this$0:Lcom/android/systemui/pip/tv/PipManager;

    invoke-virtual {p0}, Lcom/android/systemui/pip/tv/PipManager;->closePip()V

    return-void
.end method
