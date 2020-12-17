.class public Lcom/meizu/settings/utils/HanziToPinyin$Token;
.super Ljava/lang/Object;
.source "HanziToPinyin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/utils/HanziToPinyin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Token"
.end annotation


# instance fields
.field public source:Ljava/lang/String;

.field public target:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    iput p1, p0, Lcom/meizu/settings/utils/HanziToPinyin$Token;->type:I

    .line 271
    iput-object p2, p0, Lcom/meizu/settings/utils/HanziToPinyin$Token;->source:Ljava/lang/String;

    .line 272
    iput-object p3, p0, Lcom/meizu/settings/utils/HanziToPinyin$Token;->target:Ljava/lang/String;

    return-void
.end method
