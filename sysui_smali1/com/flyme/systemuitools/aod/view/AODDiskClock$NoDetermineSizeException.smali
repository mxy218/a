.class Lcom/flyme/systemuitools/aod/view/AODDiskClock$NoDetermineSizeException;
.super Ljava/lang/Exception;
.source "AODDiskClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemuitools/aod/view/AODDiskClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NoDetermineSizeException"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemuitools/aod/view/AODDiskClock;


# direct methods
.method public constructor <init>(Lcom/flyme/systemuitools/aod/view/AODDiskClock;Ljava/lang/String;)V
    .registers 3

    .line 390
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/view/AODDiskClock$NoDetermineSizeException;->this$0:Lcom/flyme/systemuitools/aod/view/AODDiskClock;

    .line 391
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
