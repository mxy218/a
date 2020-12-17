.class Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$1;
.super Ljava/lang/Object;
.source "MiniHeadsupComponent.java"

# interfaces
.implements Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;)V
    .registers 2

    .line 55
    iput-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$1;->this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHideCallBack()V
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$1;->this$0:Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;

    invoke-static {p0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->access$000(Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;)V

    return-void
.end method
