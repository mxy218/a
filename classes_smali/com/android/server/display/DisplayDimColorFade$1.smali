.class Lcom/android/server/display/DisplayDimColorFade$1;
.super Landroid/util/FloatProperty;
.source "DisplayDimColorFade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayDimColorFade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Lcom/android/server/display/DisplayDimColorFade;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"  # Ljava/lang/String;

    .line 75
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/server/display/DisplayDimColorFade;)Ljava/lang/Float;
    .registers 3
    .param p1, "object"  # Lcom/android/server/display/DisplayDimColorFade;

    .line 83
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDimColorFade;->getColorFadeLevel()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 75
    check-cast p1, Lcom/android/server/display/DisplayDimColorFade;

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDimColorFade$1;->get(Lcom/android/server/display/DisplayDimColorFade;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Lcom/android/server/display/DisplayDimColorFade;F)V
    .registers 3
    .param p1, "object"  # Lcom/android/server/display/DisplayDimColorFade;
    .param p2, "value"  # F

    .line 78
    invoke-virtual {p1, p2}, Lcom/android/server/display/DisplayDimColorFade;->setColorFadeLevel(F)V

    .line 79
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3

    .line 75
    check-cast p1, Lcom/android/server/display/DisplayDimColorFade;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayDimColorFade$1;->setValue(Lcom/android/server/display/DisplayDimColorFade;F)V

    return-void
.end method
