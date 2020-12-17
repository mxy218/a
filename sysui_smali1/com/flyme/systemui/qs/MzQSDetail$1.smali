.class Lcom/flyme/systemui/qs/MzQSDetail$1;
.super Ljava/lang/Object;
.source "MzQSDetail.java"

# interfaces
.implements Lcom/flyme/systemui/qs/DetailScrollView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/qs/MzQSDetail;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/qs/MzQSDetail;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/qs/MzQSDetail;)V
    .registers 2

    .line 84
    iput-object p1, p0, Lcom/flyme/systemui/qs/MzQSDetail$1;->this$0:Lcom/flyme/systemui/qs/MzQSDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBottomOverscrolled()V
    .registers 1

    return-void
.end method

.method public onEmptySpaceClicked()V
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSDetail$1;->this$0:Lcom/flyme/systemui/qs/MzQSDetail;

    invoke-static {p0}, Lcom/flyme/systemui/qs/MzQSDetail;->access$000(Lcom/flyme/systemui/qs/MzQSDetail;)Lcom/android/systemui/qs/QSPanel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->closeDetail()V

    return-void
.end method
