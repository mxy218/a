.class public Lcom/meizu/settings/language/FlymeHanziToPinyin$Token;
.super Ljava/lang/Object;
.source "FlymeHanziToPinyin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/language/FlymeHanziToPinyin;
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

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput p1, p0, Lcom/meizu/settings/language/FlymeHanziToPinyin$Token;->type:I

    .line 172
    iput-object p2, p0, Lcom/meizu/settings/language/FlymeHanziToPinyin$Token;->source:Ljava/lang/String;

    .line 173
    iput-object p3, p0, Lcom/meizu/settings/language/FlymeHanziToPinyin$Token;->target:Ljava/lang/String;

    return-void
.end method
