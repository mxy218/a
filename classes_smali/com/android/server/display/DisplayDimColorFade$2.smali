.class Lcom/android/server/display/DisplayDimColorFade$2;
.super Ljava/lang/Object;
.source "DisplayDimColorFade.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayDimColorFade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayDimColorFade;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayDimColorFade;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/display/DisplayDimColorFade;

    .line 170
    iput-object p1, p0, Lcom/android/server/display/DisplayDimColorFade$2;->this$0:Lcom/android/server/display/DisplayDimColorFade;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 173
    iget-object v0, p0, Lcom/android/server/display/DisplayDimColorFade$2;->this$0:Lcom/android/server/display/DisplayDimColorFade;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/display/DisplayDimColorFade;->access$002(Lcom/android/server/display/DisplayDimColorFade;Z)Z

    .line 175
    iget-object v0, p0, Lcom/android/server/display/DisplayDimColorFade$2;->this$0:Lcom/android/server/display/DisplayDimColorFade;

    invoke-static {v0}, Lcom/android/server/display/DisplayDimColorFade;->access$100(Lcom/android/server/display/DisplayDimColorFade;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 176
    iget-object v0, p0, Lcom/android/server/display/DisplayDimColorFade$2;->this$0:Lcom/android/server/display/DisplayDimColorFade;

    invoke-static {v0}, Lcom/android/server/display/DisplayDimColorFade;->access$300(Lcom/android/server/display/DisplayDimColorFade;)Lcom/android/server/display/ColorFade;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayDimColorFade$2;->this$0:Lcom/android/server/display/DisplayDimColorFade;

    invoke-static {v1}, Lcom/android/server/display/DisplayDimColorFade;->access$200(Lcom/android/server/display/DisplayDimColorFade;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/ColorFade;->draw(F)Z

    .line 179
    :cond_1d
    iget-object v0, p0, Lcom/android/server/display/DisplayDimColorFade$2;->this$0:Lcom/android/server/display/DisplayDimColorFade;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/display/DisplayDimColorFade;->access$402(Lcom/android/server/display/DisplayDimColorFade;Z)Z

    .line 180
    return-void
.end method
