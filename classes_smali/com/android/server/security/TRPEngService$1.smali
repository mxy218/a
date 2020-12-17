.class Lcom/android/server/security/TRPEngService$1;
.super Ljava/lang/Object;
.source "TRPEngService.java"

# interfaces
.implements Lcom/android/server/security/TrpVectorManager$OnTriggerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/security/TRPEngService;->initTrp(Lmeizu/security/TrpConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/security/TRPEngService;


# direct methods
.method constructor <init>(Lcom/android/server/security/TRPEngService;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/security/TRPEngService;

    .line 345
    iput-object p1, p0, Lcom/android/server/security/TRPEngService$1;->this$0:Lcom/android/server/security/TRPEngService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnTrigger(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;II)V
    .registers 13
    .param p1, "packageName"  # Ljava/lang/String;
    .param p3, "sessionId"  # Ljava/lang/String;
    .param p4, "triggerReason"  # I
    .param p5, "monitorSize"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .line 350
    .local p2, "vectors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/security/TRPEngService$1;->this$0:Lcom/android/server/security/TRPEngService;

    invoke-static {}, Lcom/android/server/security/TRPEngService;->access$000()I

    move-result v3

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/server/security/TRPEngService;->access$100(Lcom/android/server/security/TRPEngService;Ljava/lang/String;Ljava/util/ArrayList;ILjava/lang/String;II)V

    .line 351
    return-void
.end method
