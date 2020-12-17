.class Lcom/flyme/systemui/qs/tiles/MeizuShareTile$1;
.super Ljava/lang/Object;
.source "MeizuShareTile.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/policy/MeizuShareController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/qs/tiles/MeizuShareTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/qs/tiles/MeizuShareTile;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/qs/tiles/MeizuShareTile;)V
    .registers 2

    .line 30
    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/MeizuShareTile$1;->this$0:Lcom/flyme/systemui/qs/tiles/MeizuShareTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMeizuShareStateChanged(Z)V
    .registers 3

    .line 33
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MeizuShareTile$1;->this$0:Lcom/flyme/systemui/qs/tiles/MeizuShareTile;

    invoke-static {v0, p1}, Lcom/flyme/systemui/qs/tiles/MeizuShareTile;->access$002(Lcom/flyme/systemui/qs/tiles/MeizuShareTile;Z)Z

    .line 34
    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/MeizuShareTile$1;->this$0:Lcom/flyme/systemui/qs/tiles/MeizuShareTile;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/flyme/systemui/qs/tiles/MeizuShareTile;->access$100(Lcom/flyme/systemui/qs/tiles/MeizuShareTile;Ljava/lang/Object;)V

    return-void
.end method
