.class Lcom/flyme/server/pm/FlymeDexOptManager$1$1;
.super Ljava/util/ArrayList;
.source "FlymeDexOptManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/server/pm/FlymeDexOptManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/flyme/server/pm/FlymeDexOptManager$1;


# direct methods
.method constructor <init>(Lcom/flyme/server/pm/FlymeDexOptManager$1;)V
    .registers 3
    .param p1, "this$1"  # Lcom/flyme/server/pm/FlymeDexOptManager$1;

    .line 120
    iput-object p1, p0, Lcom/flyme/server/pm/FlymeDexOptManager$1$1;->this$1:Lcom/flyme/server/pm/FlymeDexOptManager$1;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    iget-object v0, p0, Lcom/flyme/server/pm/FlymeDexOptManager$1$1;->this$1:Lcom/flyme/server/pm/FlymeDexOptManager$1;

    iget-object v0, v0, Lcom/flyme/server/pm/FlymeDexOptManager$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/flyme/server/pm/FlymeDexOptManager$1$1;->add(Ljava/lang/Object;)Z

    .line 122
    return-void
.end method
