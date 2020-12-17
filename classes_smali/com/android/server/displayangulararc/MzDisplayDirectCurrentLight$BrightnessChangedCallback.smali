.class final Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$BrightnessChangedCallback;
.super Landroid/os/IBrightnessChangedCallback$Stub;
.source "MzDisplayDirectCurrentLight.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BrightnessChangedCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;


# direct methods
.method private constructor <init>(Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;)V
    .registers 2

    .line 123
    iput-object p1, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$BrightnessChangedCallback;->this$0:Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;

    invoke-direct {p0}, Landroid/os/IBrightnessChangedCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$1;)V
    .registers 3
    .param p1, "x0"  # Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;
    .param p2, "x1"  # Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$1;

    .line 123
    invoke-direct {p0, p1}, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$BrightnessChangedCallback;-><init>(Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;)V

    return-void
.end method


# virtual methods
.method public onBrightnessChanged(I)V
    .registers 3
    .param p1, "brightness"  # I

    .line 126
    iget-object v0, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$BrightnessChangedCallback;->this$0:Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;

    invoke-static {v0, p1}, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->access$900(Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;I)V

    .line 127
    return-void
.end method
