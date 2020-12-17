.class public Lcom/meizu/settings/display/QcomDisplayWrapper$ModeInfoWrapper;
.super Ljava/lang/Object;
.source "QcomDisplayWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/display/QcomDisplayWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ModeInfoWrapper"
.end annotation


# instance fields
.field public mode:Lcom/qti/snapdragon/sdk/display/ModeInfo;

.field public modeID:I

.field public modename:Ljava/lang/String;

.field final synthetic this$0:Lcom/meizu/settings/display/QcomDisplayWrapper;


# direct methods
.method constructor <init>(Lcom/meizu/settings/display/QcomDisplayWrapper;Lcom/qti/snapdragon/sdk/display/ModeInfo;)V
    .registers 3

    .line 62
    iput-object p1, p0, Lcom/meizu/settings/display/QcomDisplayWrapper$ModeInfoWrapper;->this$0:Lcom/meizu/settings/display/QcomDisplayWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p2, p0, Lcom/meizu/settings/display/QcomDisplayWrapper$ModeInfoWrapper;->mode:Lcom/qti/snapdragon/sdk/display/ModeInfo;

    .line 64
    invoke-virtual {p2}, Lcom/qti/snapdragon/sdk/display/ModeInfo;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/display/QcomDisplayWrapper$ModeInfoWrapper;->modename:Ljava/lang/String;

    .line 65
    invoke-virtual {p2}, Lcom/qti/snapdragon/sdk/display/ModeInfo;->getId()I

    move-result p1

    iput p1, p0, Lcom/meizu/settings/display/QcomDisplayWrapper$ModeInfoWrapper;->modeID:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 1

    .line 70
    iget-object p0, p0, Lcom/meizu/settings/display/QcomDisplayWrapper$ModeInfoWrapper;->modename:Ljava/lang/String;

    return-object p0
.end method
