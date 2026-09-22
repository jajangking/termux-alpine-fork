.class Lcom/termux/api/apis/SmsInboxAPI$1;
.super Lcom/termux/api/util/ResultReturner$ResultJsonWriter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/api/apis/SmsInboxAPI;->onReceive(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$contentURI:Landroid/net/Uri;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$conversationLimit:I

.field final synthetic val$conversationList:Z

.field final synthetic val$conversationOffset:I

.field final synthetic val$conversationReturnMultipleMessages:Z

.field final synthetic val$conversationReturnNestedView:Z

.field final synthetic val$conversationReturnNoOrderReverse:Z

.field final synthetic val$conversationSelection:Ljava/lang/String;

.field final synthetic val$conversationSortOrder:Ljava/lang/String;

.field final synthetic val$messageAddress:Ljava/lang/String;

.field final synthetic val$messageLimit:I

.field final synthetic val$messageOffset:I

.field final synthetic val$messageReturnNoOrderReverse:Z

.field final synthetic val$messageSelection:Ljava/lang/String;

.field final synthetic val$messageSortOrder:Ljava/lang/String;


# direct methods
.method constructor <init>(ZLandroid/content/Context;IILjava/lang/String;Ljava/lang/String;ZZZIILjava/lang/String;Ljava/lang/String;ZLandroid/net/Uri;Ljava/lang/String;)V
    .locals 2

    move-object v0, p0

    move v1, p1

    .line 101
    iput-boolean v1, v0, Lcom/termux/api/apis/SmsInboxAPI$1;->val$conversationList:Z

    move-object v1, p2

    iput-object v1, v0, Lcom/termux/api/apis/SmsInboxAPI$1;->val$context:Landroid/content/Context;

    move v1, p3

    iput v1, v0, Lcom/termux/api/apis/SmsInboxAPI$1;->val$conversationOffset:I

    move v1, p4

    iput v1, v0, Lcom/termux/api/apis/SmsInboxAPI$1;->val$conversationLimit:I

    move-object v1, p5

    iput-object v1, v0, Lcom/termux/api/apis/SmsInboxAPI$1;->val$conversationSelection:Ljava/lang/String;

    move-object v1, p6

    iput-object v1, v0, Lcom/termux/api/apis/SmsInboxAPI$1;->val$conversationSortOrder:Ljava/lang/String;

    move v1, p7

    iput-boolean v1, v0, Lcom/termux/api/apis/SmsInboxAPI$1;->val$conversationReturnMultipleMessages:Z

    move v1, p8

    iput-boolean v1, v0, Lcom/termux/api/apis/SmsInboxAPI$1;->val$conversationReturnNestedView:Z

    move v1, p9

    iput-boolean v1, v0, Lcom/termux/api/apis/SmsInboxAPI$1;->val$conversationReturnNoOrderReverse:Z

    move v1, p10

    iput v1, v0, Lcom/termux/api/apis/SmsInboxAPI$1;->val$messageOffset:I

    move v1, p11

    iput v1, v0, Lcom/termux/api/apis/SmsInboxAPI$1;->val$messageLimit:I

    move-object v1, p12

    iput-object v1, v0, Lcom/termux/api/apis/SmsInboxAPI$1;->val$messageSelection:Ljava/lang/String;

    move-object v1, p13

    iput-object v1, v0, Lcom/termux/api/apis/SmsInboxAPI$1;->val$messageSortOrder:Ljava/lang/String;

    move/from16 v1, p14

    iput-boolean v1, v0, Lcom/termux/api/apis/SmsInboxAPI$1;->val$messageReturnNoOrderReverse:Z

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/termux/api/apis/SmsInboxAPI$1;->val$contentURI:Landroid/net/Uri;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/termux/api/apis/SmsInboxAPI$1;->val$messageAddress:Ljava/lang/String;

    invoke-direct {p0}, Lcom/termux/api/util/ResultReturner$ResultJsonWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public writeJson(Landroid/util/JsonWriter;)V
    .locals 25

    move-object/from16 v0, p0

    .line 104
    iget-boolean v1, v0, Lcom/termux/api/apis/SmsInboxAPI$1;->val$conversationList:Z

    if-eqz v1, :cond_0

    .line 105
    iget-object v2, v0, Lcom/termux/api/apis/SmsInboxAPI$1;->val$context:Landroid/content/Context;

    iget v4, v0, Lcom/termux/api/apis/SmsInboxAPI$1;->val$conversationOffset:I

    iget v5, v0, Lcom/termux/api/apis/SmsInboxAPI$1;->val$conversationLimit:I

    iget-object v6, v0, Lcom/termux/api/apis/SmsInboxAPI$1;->val$conversationSelection:Ljava/lang/String;

    iget-object v7, v0, Lcom/termux/api/apis/SmsInboxAPI$1;->val$conversationSortOrder:Ljava/lang/String;

    iget-boolean v8, v0, Lcom/termux/api/apis/SmsInboxAPI$1;->val$conversationReturnMultipleMessages:Z

    iget-boolean v9, v0, Lcom/termux/api/apis/SmsInboxAPI$1;->val$conversationReturnNestedView:Z

    iget-boolean v10, v0, Lcom/termux/api/apis/SmsInboxAPI$1;->val$conversationReturnNoOrderReverse:Z

    iget v11, v0, Lcom/termux/api/apis/SmsInboxAPI$1;->val$messageOffset:I

    iget v12, v0, Lcom/termux/api/apis/SmsInboxAPI$1;->val$messageLimit:I

    iget-object v13, v0, Lcom/termux/api/apis/SmsInboxAPI$1;->val$messageSelection:Ljava/lang/String;

    iget-object v14, v0, Lcom/termux/api/apis/SmsInboxAPI$1;->val$messageSortOrder:Ljava/lang/String;

    iget-boolean v15, v0, Lcom/termux/api/apis/SmsInboxAPI$1;->val$messageReturnNoOrderReverse:Z

    move-object/from16 v3, p1

    invoke-static/range {v2 .. v15}, Lcom/termux/api/apis/SmsInboxAPI;->getConversations(Landroid/content/Context;Landroid/util/JsonWriter;IILjava/lang/String;Ljava/lang/String;ZZZIILjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 116
    :cond_0
    iget-object v1, v0, Lcom/termux/api/apis/SmsInboxAPI$1;->val$context:Landroid/content/Context;

    iget-object v2, v0, Lcom/termux/api/apis/SmsInboxAPI$1;->val$contentURI:Landroid/net/Uri;

    iget v3, v0, Lcom/termux/api/apis/SmsInboxAPI$1;->val$messageOffset:I

    iget v4, v0, Lcom/termux/api/apis/SmsInboxAPI$1;->val$messageLimit:I

    iget-object v5, v0, Lcom/termux/api/apis/SmsInboxAPI$1;->val$messageSelection:Ljava/lang/String;

    iget-object v6, v0, Lcom/termux/api/apis/SmsInboxAPI$1;->val$messageAddress:Ljava/lang/String;

    iget-object v7, v0, Lcom/termux/api/apis/SmsInboxAPI$1;->val$messageSortOrder:Ljava/lang/String;

    iget-boolean v8, v0, Lcom/termux/api/apis/SmsInboxAPI$1;->val$messageReturnNoOrderReverse:Z

    move-object/from16 v16, v1

    move-object/from16 v17, p1

    move-object/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    move/from16 v24, v8

    invoke-static/range {v16 .. v24}, Lcom/termux/api/apis/SmsInboxAPI;->getAllSms(Landroid/content/Context;Landroid/util/JsonWriter;Landroid/net/Uri;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method
